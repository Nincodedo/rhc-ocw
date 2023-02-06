#!/bin/sh

source /app/common.sh

cd /data

script_name="Rewards"
previous_attempt="$1"
attempt_log_dir="logs/backups/attempt$previous_attempt/advancements"
minecraft_docker_container_name=$MC_CONTAINER_NAME
minecraft_server_log=/data/logs/latest.log
grep_phrase="\[User Authenticator #\d*\/INFO\]: UUID of player \w* is \w*-\w*-\w*-\w*-\w*"

if [ ! -d $attempt_log_dir ]
then
    log "$attempt_log_dir does not exist, exiting"
    exit 1
fi

cd $attempt_log_dir

log "Processing previous advancements in $attempt_log_dir"
count=0
transformed=0
for f in ./*.json
do
	count=$((++count))
	id=${f:2:-5}
	if [ ! -f ./$id.txt ]
	then
		username=$(curl -s --request GET --url "https://playerdb.co/api/player/minecraft/$id" --header 'User-Agent: Nincodedo (nincodedo@gmail.com)' | jq -r .data.player.username)
		echo "$username" > $id.txt
		jq -r '. | to_entries[] | select(.value.done == true) | select(.key|contains("recipes")|not) | select(.key|startswith("uncraftable")|not) | select(.key|startswith("vanilla")|not) | .key' $f 2> /dev/null > $username.txt
		transformed=$((++transformed))
	fi
done

log "Processed $transformed out of $count total"

while :; do
	(docker logs $minecraft_docker_container_name --tail 0 -f &) | grep -q "$grep_phrase"
	player_name=$(tail -n 5 "$minecraft_server_log" | grep -o "$grep_phrase" | head -n 1 | awk '{print $7}')
	if [ ${#player_name} -ne 0 ]
	then
        hastag=$(rcon_command "execute as $player_name if entity @s[tag=prevreward]")
    	#If no tag and we have a file, Player needs to be rewarded
    	if [ ${#hastag} -eq 0 ] && [ -f ./$player_name.txt ]
    	then
    		log "Sending rewards to $player_name"
    		cat $player_name.txt | awk -F : '{print "nincodedo:rewards/"$2""}' > rewards.txt
    		count=$(wc -l rewards.txt | awk '{print $1}')
    		rcon_command "scoreboard players set $player_name advrewards $count"
    		while read line;
    		do
    			rcon_command "advancement grant $player_name only $line"
    		done < rewards.txt
    		rcon_command "tag $player_name add prevreward"
    		rcon_command "execute as $player_name run function nincodedo:rewards/announce"
    		log "Finished sending rewards to $player_name"
    	fi
    fi
done
