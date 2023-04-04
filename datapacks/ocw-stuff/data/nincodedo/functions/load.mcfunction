function nincodedo:uniqueitems/load
function nincodedo:items/load
function nincodedo:interaction/bone_meal/load

scoreboard objectives add advrewards dummy
scoreboard objectives add bannerplz trigger
scoreboard players enable @a bannerplz

execute store result score current_day rhcdata run time query day
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 10t
schedule function nincodedo:slowtick 5s
gamerule maxEntityCramming 8
gamerule playersSleepingPercentage 60
scoreboard players set config_debug rhcconfig 0
