#!/bin/sh

aggregate_player_stats() {
  attempt_log_dir="logs/stats/attempt$attempt_number"
  mkdir -p $attempt_log_dir
  cp -r world/stats/ $attempt_log_dir
}

rcon_command() {
  docker exec $minecraft_docker_container_name rcon-cli $1
}

discord_webhook_send() {
  curl -X POST -H "Content-Type: application/json" -d "{\"embeds\":[{\"title\": \"$1\", \"description\": \"$2\", \"color\": \"16711680\"}]}" $discord_webhook > /dev/null
}

world_ready_setup() {
  rm -r world/datapacks/*
  cp -r /app/who-did-this/ /app/ocw-stuff world/datapacks/
  chown -R 1000:1000 world/datapacks/
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
    death_message=`tail -n 10 $minecraft_server_log | grep -B 1 "$grep_phrase" | head -n 1 | cut -f6- -d' '`
    mc_days_survived=`rcon_command "time query day" | awk '{print $4}'`
    echo $mc_days_survived >> $mc_days_survived_log_name
    mc_days_highscore=`cat $mc_days_survived_log_name | sort -n -r | head -n 1`
    log "$dead_player died, restarting server"
    echo "$current_datetime $dead_player died" >> $death_log_name
    world_end_text1="$dead_player has died, the server is restarting in $death_reset_delay_seconds seconds"
    world_end_text2="You survived $mc_days_survived in game days"
    world_end_text3="The high score is $mc_days_highscore in game days"
    rcon_command "tellraw @a {\"text\": \"$world_end_text1\"}"
    rcon_command "tellraw @a {\"text\": \"$world_end_text2\"}"
    rcon_command "tellraw @a {\"text\": \"$world_end_text3\"}"
    discord_webhook_send "$dead_player Did This" "$death_message\n$world_end_text1\n$world_end_text2\n$world_end_text3"
  fi
}


minecraft_server_dir=/data
app_dir=/app
minecraft_compose_dir=$app_dir/ocw-minecraft
minecraft_server_log=$minecraft_server_dir/logs/latest.log
minecraft_docker_container_name=mc
dead_player=""
discord_webhook_file="/run/secrets/discord_webhook"
discord_webhook=""
if [ -f "$discord_webhook_file" ]
then
  discord_webhook=`cat $discord_webhook_file`
fi
cd $minecraft_server_dir
log "Starting LogWatcher in: `pwd`"
grep_phrase="\[Server thread\/INFO\] .* has made the advancement \[You did this\]"
death_reset_delay_seconds=20
while : ;
do
  dead_player=""
  log "Checking for healthy container status"
  docker ps -f name=$minecraft_docker_container_name | grep healthy > /dev/null
  until [ $? -eq 0 ];
  do
    sleep 0.1
    docker ps -f name=$minecraft_docker_container_name | grep healthy > /dev/null
  done
  current_date=`date +"%m-%Y"`
  seed_log_name="logs/seed-$current_date.log"
  death_log_name="logs/death-$current_date.log"
  mc_days_survived_log_name="logs/mc_days_survived-$current_date.log"
  mc_days_survived_all_logs="logs/mc_days_survived-*"
  touch $mc_days_survived_log_name
  attempt_number=`wc -l $mc_days_survived_all_logs | sort -r | head -n 1 | awk '{print $1}'`
  attempt_number=$((++attempt_number))
  echo "MOTD=$SERVER_NAME - Attempt \#$attempt_number" > $minecraft_compose_dir/motd_override.env
  world_ready_setup
  seed=`rcon_command seed`
  current_datetime=`date +"%d-%m-%Y %I:%M:%S %p"`
  echo "$current_datetime $seed" >> $seed_log_name
  log "Found healthy container, tailing docker log"
  ( docker logs $minecraft_docker_container_name --tail 0 -f & ) | grep -q "$grep_phrase"
  world_ending_announcements
  aggregate_player_stats
  if [ ! -z "$dead_player" ]
  then
    attempt_number=$((++attempt_number))
    echo "MOTD=$SERVER_NAME - Attempt \#$attempt_number" > $minecraft_compose_dir/motd_override.env
    sleep $death_reset_delay_seconds
    docker stop $minecraft_docker_container_name
    docker rm $minecraft_docker_container_name
    rm -rf world
    docker-compose -f $minecraft_compose_dir/docker-compose.yaml up -d $minecraft_docker_container_name
  fi
done
