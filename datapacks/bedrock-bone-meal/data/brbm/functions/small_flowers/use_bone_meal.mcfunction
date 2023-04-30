clear @s minecraft:bone_meal 1
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["place_flower"]}
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["place_flower"]}
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] run summon minecraft:marker ~ ~ ~ {Tags:["place_flower"]}
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] run spreadplayers ~ ~ 1 3.5 false @e[tag=place_flower,sort=nearest,limit=3]

execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:dandelion positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:dandelion
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:poppy positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:poppy
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:blue_orchid positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:blue_orchid
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:allium positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:allium
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:azure_bluet positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:azure_bluet
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:red_tulip positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:red_tulip
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:orange_tulip positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:orange_tulip
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:white_tulip positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:white_tulip
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:pink_tulip positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:pink_tulip
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:oxeye_daisy positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:oxeye_daisy
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:cornflower positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:cornflower
execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:lily_of_the_valley positioned as @e[tag=place_flower,sort=nearest,limit=3] positioned over motion_blocking_no_leaves run setblock ~ ~ ~ minecraft:lily_of_the_valley

execute at @e[tag=small_flower_interaction,sort=nearest,limit=1] run particle minecraft:happy_villager ~ ~ ~ 2 0.25 2 1 150

kill @e[tag=place_flower,distance=..8]

advancement revoke @s only brbm:small_flowers/bone_meal_on_flower
