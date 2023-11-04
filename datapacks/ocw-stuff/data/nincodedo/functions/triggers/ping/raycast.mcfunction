execute if score @s raycast_steps > max_raycast_steps rhcconfig run tag @s remove raycasting
execute if entity @s[tag=!raycasting] run return 0
execute if entity @s[tag=raycasting] if block ~ ~ ~ minecraft:air unless entity @e[distance=..1.5,type=!minecraft:marker,type=!minecraft:interaction,tag=!raycasting] positioned ^ ^ ^0.5 run function nincodedo:triggers/ping/raycast
execute if entity @s[tag=raycasting] unless block ~ ~ ~ minecraft:air run function nincodedo:triggers/ping/this_block
execute if entity @s[tag=raycasting] if entity @e[distance=..1.5,type=!minecraft:marker,type=!minecraft:interaction,tag=!raycasting] run function nincodedo:triggers/ping/this_entity
scoreboard players add @s raycast_steps 1
