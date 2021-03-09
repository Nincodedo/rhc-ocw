#!/bin/sh
rcon_command(){
  docker exec mc rcon-cli $1
}

scoreboard_setup(){
  rcon_command "scoreboard objectives add health health"
  rcon_command "scoreboard objectives setdisplay list health"  
  rcon_command "scoreboard objectives modify health rendertype hearts"
}

log(){
  local current_datetime = `date +"%d-%m-%Y %H:%m %p"`
  echo "$current_datetime $@"
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
  scoreboard_setup
  seed=`rcon_command seed`
  current_datetime=`date +"%d-%m-%Y %H:%m %p"`
  echo "$current_datetime $seed" >> seed.log
  log "Found, tailing log"
  ( tail -f -n0 "$server_log" & ) | grep -q "$grep_phrase"
  dead_player=`tail -n 10 "$server_log" | grep "$grep_phrase" | awk '{print $4}'`
  current_datetime=`date +"%d-%m-%Y %H:%m %p"`
  log "$dead_player died, restarting server"
  rcon_command "say $dead_player has died, the server is restarting in $death_reset_delay_seconds seconds"
  echo "$current_datetime $dead_player died" >> death.log
  echo "MOTD=OCW Minecraft\nLast incident $current_datetime" > /app/ocw-minecraft/docker.env
  sleep $death_reset_delay_seconds
  docker stop mc
  docker rm mc
  rm -rf world
  mkdir world world/datapacks
  cp -r /app/death-notify/ world/datapacks/
  docker-compose -f /app/ocw-minecraft/docker-compose.yaml up -d mc
done  
