function nincodedo:uniqueitems/load
function nincodedo:items/load
function nincodedo:rewards/load
function nincodedo:triggers/ping/load

scoreboard objectives add advrewards dummy
scoreboard objectives add bannerplz trigger
scoreboard players enable @a bannerplz
scoreboard objectives add ocwplayergiftcount dummy

execute store result score current_day rhcdata run time query day
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 10t
schedule function nincodedo:slowtick 5s
gamerule maxEntityCramming 8
gamerule playersSleepingPercentage 60
scoreboard players set config_debug rhcconfig 0
scoreboard players set 8 math 8
scoreboard players set 5 math 5
scoreboard players set 2 math 2
scoreboard players set m1 math -1
