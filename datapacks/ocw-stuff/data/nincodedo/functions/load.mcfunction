scoreboard objectives add sleepAdvCheck dummy
scoreboard objectives add current_day dummy
scoreboard objectives add player_count dummy

function nincodedo:uniqueitems/load

scoreboard objectives add advrewards dummy
scoreboard objectives add bannerplz trigger
scoreboard players enable @a bannerplz
execute store result score global current_day run time query day
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 10t
schedule function nincodedo:slowtick 5s
gamerule maxEntityCramming 8
gamerule playersSleepingPercentage 60
scoreboard players set config_debug rhcdata 0
