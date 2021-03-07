#!/bin/sh
cd /mnt/e/Docker/minecraft
echo "Starting script in: `pwd`"
server_log=logs/latest.log
grep_phrase="\[Server thread\/INFO\]\: .* has made the advancement \[You did this\]"
while : ;
do
  echo "Checking for server log and healthy container status"
  docker ps -f name=mc | grep healthy > /dev/null
  until [ -f "$server_log" -a $? -eq 0 ];
  do
    sleep 0.1
    docker ps -f name=mc | grep healthy > /dev/null
  done
  echo "Found, tailing log"
  ( tail -f -n0 "$server_log" & ) | grep -q "$grep_phrase"
  dead_player=`tail -n 10 "$server_log" | grep "$grep_phrase" | awk '{print $4}'`
  echo "$dead_player died, restarting server"
  docker exec mc rcon-cli "say $dead_player has died, the server is restarting in 15 seconds"
  sleep 15
  docker stop mc
  docker rm mc
  rm -rf world
  mkdir world world/datapacks
  cp -r /app/death-notify/ world/datapacks/
  docker-compose -f /app/docker-compose.yaml up -d mc-java
done  

