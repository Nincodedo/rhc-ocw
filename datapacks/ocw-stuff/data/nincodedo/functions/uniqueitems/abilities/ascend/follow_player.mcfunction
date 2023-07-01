summon minecraft:marker ~ ~ ~ {Tags:["find_pop_out_y"]}
execute as @e[tag=find_pop_out_y,sort=nearest,limit=1] at @s run function nincodedo:uniqueitems/abilities/ascend/find_pop_out_y
execute store result score @s ascend_start_y run data get entity @s Pos[1]
execute store result score @p[tag=ascending] ascend_start_y run data get entity @p[tag=ascending] Pos[1]
scoreboard players operation @s ascend_start_y -= @p[tag=ascending] ascend_start_y
execute if entity @s[tag=ascend_good] if score @s ascend_start_y > ascend_height_limit rhcconfig run function nincodedo:uniqueitems/abilities/ascend/change_to_bad_location
execute if entity @s[tag=ascend_good,tag=moving] run function nincodedo:uniqueitems/abilities/ascend/change_to_bad_location
execute if entity @s[tag=ascend_bad,tag=!moving,tag=!bad_dimension] if score @s ascend_start_y <= ascend_height_limit rhcconfig run function nincodedo:uniqueitems/abilities/ascend/change_to_good_location
kill @e[tag=find_pop_out_y,sort=nearest,limit=1]
execute if entity @e[tag=ascend_good] run scoreboard players set @p[tag=ascending] ascend_ok_start 1
execute if entity @e[tag=ascend_bad] run scoreboard players set @p[tag=ascending] ascend_ok_start 0
data modify entity @s Pos[0] set from entity @p[tag=ascending] Pos[0]
data modify entity @s Pos[2] set from entity @p[tag=ascending] Pos[2]
tag @s remove moving
execute at @s if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tag @s add moving
execute at @s if block ~ ~ ~ #minecraft:replaceable if block ~ ~1 ~ #minecraft:replaceable run tp ~ ~1 ~
execute at @s unless block ~ ~ ~ #minecraft:replaceable run tag @s add moving
execute at @s unless block ~ ~ ~ #minecraft:replaceable run tp ~ ~-1 ~
execute unless entity @p[tag=ascending] run kill @s
scoreboard players operation @s[tag=ascend_bad] ascend_start_y /= 2 math
execute if score @s[tag=ascend_bad] ascend_start_y > ascend_height_limit rhcconfig run kill @s
execute if entity @p[tag=ascending] run schedule function nincodedo:uniqueitems/abilities/ascend/schedule_follow_player 1t
execute if score @s ascend_start_y matches ..0 as @p[tag=ascending,scores={ascend_phase=0}] at @s run function nincodedo:uniqueitems/abilities/ascend/stop_initial
