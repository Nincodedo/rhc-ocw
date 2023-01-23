log() {
  log_time=$(date +"%d-%m-%Y %I:%M:%S %p")
  echo "$log_time [$script_name]: $*"
}

script_name=""
