#!/bin/sh

source /app/logging.sh

script_name="ReplayCleanup"
grep_phrase="\[Autopause loop\] No client reconnected - pausing"
minecraft_docker_container_name=$MC_CONTAINER_NAME

log "Starting ReplayCleanup for container $minecraft_docker_container_name"
while :; do
  (docker logs $minecraft_docker_container_name --tail 0 -f &) | grep -q "$grep_phrase"
  dir_size=$(du -sh /data/replay_recordings/)
  log "Current replay directory size: $dir_size"
  #rm -rf /data/replay_recordings/*
done
