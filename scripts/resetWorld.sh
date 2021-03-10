#!/bin/sh
rcon_command() {
  docker exec mc rcon-cli $1
}

world_ready_setup() {
  cp -r /app/death-notify/ world/datapacks/
  rcon_command "scoreboard objectives add health health" > /dev/null
  rcon_command "scoreboard objectives setdisplay list health" > /dev/null
  rcon_command "scoreboard objectives modify health rendertype hearts" > /dev/null
  rcon_command "datapack list"
  rcon_command "datapack enable 'file/death-notify'"
}

log() {
  local current_datetime=`date +"%d-%m-%Y %I:%M:%S %p"`
  echo "$current_datetime [LogWatcher]: $@"
}

world_ending_announcements() {
  current_datetime=`date +"%d-%m-%Y %I:%M:%S %p"`
  dead_player=`tail -n 10 "$server_log" | grep "$grep_phrase" | awk '{print $4}'`
  mc_days_survived=`rcon_command "time query day" | awk '{print $4}'`
  echo $mc_days_survived >> mc_days_survived.log
  mc_days_highscore=`cat mc_days_survived.log | sort -n -r | head -n 1`

  log "$dead_player died, restarting server"
  echo "$current_datetime $dead_player died" >> death.log
  rcon_command "say $dead_player has died, the server is restarting in $death_reset_delay_seconds seconds"
  rcon_command "say you survived $mc_days_survived in game days"
  rcon_command "say the high score is $mc_days_highscore in game days"
}

cd /mnt/e/Docker/minecraft
log "Starting script in: `pwd`"
server_log=logs/latest.log
grep_phrase="\[Server thread\/INFO\]\: .* has made the advancement \[You did this\]"
death_reset_delay_seconds=20
while : ;
do
  log "Checking for server log and healthy container status"
  docker ps -f name=mc | grep healthy > /dev/null
  until [ -f "$server_log" -a $? -eq 0 ];
  do
    sleep 0.1
    docker ps -f name=mc | grep healthy > /dev/null
  done
  world_ready_setup
  seed=`rcon_command seed`
  current_datetime=`date +"%d-%m-%Y %I:%M:%S %p"`
  current_date=`date +"%d-%m-%Y"`
  echo "$current_datetime $seed" >> seed.log
  log "Found, tailing log"
  ( tail -f -n0 "$server_log" & ) | grep -q "$grep_phrase"
  world_ending_announcements
  echo "MOTD=$SERVER_NAME\nLast incident $current_datetime" > /app/ocw-minecraft/motd_override.env
  sleep $death_reset_delay_seconds
  docker stop mc
  docker rm mc
  rm -rf world
  docker-compose -f /app/ocw-minecraft/docker-compose.yaml up -d mc
done  
