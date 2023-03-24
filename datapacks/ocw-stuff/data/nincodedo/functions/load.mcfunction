function nincodedo:uniqueitems/load
function nincodedo:items/load

scoreboard objectives add advrewards dummy
scoreboard objectives add bannerplz trigger
scoreboard players enable @a bannerplz
scoreboard objectives add nopotionsplz trigger
scoreboard objectives add lookingatsmallflower dummy
scoreboard objectives add lookingatsugarcane dummy
scoreboard objectives add sugarcaneheight dummy
execute store result score current_day rhcdata run time query day
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 10t
schedule function nincodedo:slowtick 5s
gamerule maxEntityCramming 8
gamerule playersSleepingPercentage 60
scoreboard players set config_debug rhcdata 0
