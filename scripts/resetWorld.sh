#!/bin/sh
rcon_command(){
  docker exec mc rcon-cli $1
}

world_ready_setup() {
  cp -r /app/who-did-this/ world/datapacks/
  cp -r /app/ocw-stuff/ world/datapacks/
  rcon_command "scoreboard objectives add health health" > /dev/null
  rcon_command "scoreboard objectives setdisplay list health" > /dev/null
  rcon_command "scoreboard objectives modify health rendertype hearts" > /dev/null
  rcon_command "datapack list" > /dev/null
  rcon_command "datapack enable 'file/who-did-this'" > /dev/null
  rcon_command "datapack enable 'file/ocw-stuff'" > /dev/null
}

log() {
  log_time=`date +"%d-%m-%Y %I:%M:%S %p"`
  echo "$log_time [LogWatcher]: $@"
}

world_ending_announcements() {
  current_datetime=`date +"%d-%m-%Y %I:%M:%S %p"`
  dead_player=`tail -n 10 $minecraft_server_log | grep "$grep_phrase" | awk '{print $6}'`
  if [ ! -z "$dead_player" ]
  then
    mc_days_survived=`rcon_command "time query day" | awk '{print $4}'`
    echo $mc_days_survived >> $mc_days_survived_log_name
    mc_days_highscore=`cat $mc_days_survived_log_name | sort -n -r | head -n 1`
    log "$dead_player died, restarting server"
    echo "$current_datetime $dead_player died" >> $death_log_name
    rcon_command "tellraw @a {\"text\": \"$dead_player has died, the server is restarting in $death_reset_delay_seconds seconds\"}"
    rcon_command "tellraw @a {\"text\": \"You survived $mc_days_survived in game days\"}"
    rcon_command "tellraw @a {\"text\": \"The high score is $mc_days_highscore in game days\"}"
  fi
}

minecraft_server_dir=/data
app_dir=/app
minecraft_compose_dir=$app_dir/ocw-minecraft
minecraft_server_log=$minecraft_server_dir/logs/latest.log
dead_player=""
cd $minecraft_server_dir
log "Starting LogWatcher in: `pwd`"
grep_phrase="\[Server thread\/INFO\] .* has made the advancement \[You did this\]"
death_reset_delay_seconds=20
while : ;
do
  dead_player=""
  log "Checking for healthy container status"
  docker ps -f name=mc | grep healthy > /dev/null
  until [ $? -eq 0 ];
  do
    sleep 0.1
    docker ps -f name=mc | grep healthy > /dev/null
  done
  current_date=`date +"%m-%Y"`
  seed_log_name="logs/seed-$current_date.log"
  death_log_name="logs/death-$current_date.log"
  mc_days_survived_log_name="logs/mc_days_survived-$current_date.log"
  world_ready_setup
  seed=`rcon_command seed`
  current_datetime=`date +"%d-%m-%Y %I:%M:%S %p"`
  echo "$current_datetime $seed" >> $seed_log_name
  log "Found healthy container, tailing docker log"
  ( docker logs mc --tail 0 -f & ) | grep -q "$grep_phrase"
  world_ending_announcements
  if [ ! -z "$dead_player" ]
  then
    echo "MOTD=$SERVER_NAME\nLast incident $current_datetime" > $minecraft_compose_dir/motd_override.env
    sleep $death_reset_delay_seconds
    docker stop mc
    docker rm mc
    rm -rf world
    docker-compose -f $minecraft_compose_dir/docker-compose.yaml up -d mc
  fi
done  
