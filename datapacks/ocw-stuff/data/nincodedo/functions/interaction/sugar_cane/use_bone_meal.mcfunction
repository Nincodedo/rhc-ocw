scoreboard players reset @s sugarcaneheight
execute at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:sugar_cane run scoreboard players add @s sugarcaneheight 1
execute at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~1 ~ minecraft:sugar_cane run scoreboard players add @s sugarcaneheight 1
execute at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~2 ~ minecraft:sugar_cane run scoreboard players add @s sugarcaneheight 1
execute at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~-1 ~ minecraft:sugar_cane run scoreboard players add @s sugarcaneheight 1
execute at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~-2 ~ minecraft:sugar_cane run scoreboard players add @s sugarcaneheight 1

execute if score @s sugarcaneheight matches 1..2 run clear @s minecraft:bone_meal 1
execute if score @s sugarcaneheight matches 2 at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~1 ~ minecraft:sugar_cane run setblock ~ ~2 ~ minecraft:sugar_cane
execute if score @s sugarcaneheight matches 1..2 at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] unless block ~ ~1 ~ minecraft:sugar_cane run setblock ~ ~1 ~ minecraft:sugar_cane
execute if score @s sugarcaneheight matches 1 at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] unless block ~ ~2 ~ minecraft:sugar_cane run setblock ~ ~2 ~ minecraft:sugar_cane
execute if score @s sugarcaneheight matches 1..2 at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] run particle minecraft:happy_villager ~ ~.5 ~ 0.25 0.25 0.25 .75 9

advancement revoke @s only nincodedo:interaction/sugar_cane/bone_meal_on_sugar_cane
