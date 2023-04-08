log() {
  log_time=$(date +"%d-%m-%Y %I:%M:%S %p")
  echo "$log_time [$script_name]: $*"
}

rcon_command() {
  docker exec "$MC_CONTAINER_NAME" rcon-cli "$1"
}

script_name=""
