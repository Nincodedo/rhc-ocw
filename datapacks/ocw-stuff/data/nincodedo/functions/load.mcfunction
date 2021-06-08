scoreboard objectives add sleepAdvCheck dummy
scoreboard objectives add current_day dummy
scoreboard objectives add bannerplz trigger
scoreboard players enable @a bannerplz
scoreboard objectives add stripminenerf dummy
scoreboard players set nin.config stripminenerf 1
execute store result score global current_day run time query day
function nincodedo:runsleepchecks
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 5t
execute if score nin.config stripminenerf matches 1 run schedule function nincodedo:strip_mining_nerf 5s
gamerule maxEntityCramming 8
