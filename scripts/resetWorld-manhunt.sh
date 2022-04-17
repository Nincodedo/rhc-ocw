#!/bin/sh

rcon_command() {
  docker exec "$minecraft_docker_container_name" rcon-cli --password minecraft --port 25575 "$1"
}

log() {
  log_time=$(date +"%d-%m-%Y %I:%M:%S %p")
  echo "$log_time [LogWatcher]: $*"
}

restart_world() {
  docker stop "$minecraft_docker_container_name"
  docker rm "$minecraft_docker_container_name"
  docker-compose -f "$minecraft_compose_dir"/docker-compose.yaml up -d "$minecraft_docker_container_name"
}

app_dir=/app
minecraft_compose_dir=$app_dir/ocw-minecraft
minecraft_docker_container_name=mc-manhunt
death_reset_delay_seconds=20
grep_phrase="\[.* INFO\]: Hunters win! Do \/huntplus start to play again!"

log "Starting LogWatcher in: $(pwd)"
while :; do
  log "Checking for healthy container status"
  docker ps -f name=$minecraft_docker_container_name | grep healthy >/dev/null
  checkHealth=$?
  until [ $checkHealth -eq 0 ]; do
    sleep 0.1
    docker ps -f name=$minecraft_docker_container_name | grep healthy >/dev/null
    checkHealth=$?
  done
  log "Found healthy container, tailing docker log"
  (docker logs $minecraft_docker_container_name --tail 0 -f &) | grep -q "$grep_phrase"
  log "Game has ended. Waiting for all players to disconnect."
  rcon_command "tellraw @a {\"text\":\"The server will be restarted after everyone disconnects\"}"
  rcon_command "tellraw @a [{\"text\":\"Switch to spectator mode? \"},{\"text\":\"Click here\",\"underlined\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/gamemode spectator\"}}]"
  (docker logs $minecraft_docker_container_name --tail 0 -f &) | grep -q "\[Autopause loop\] All clients disconnected"
  restart_world
done
