summon minecraft:marker ~ ~ ~ {Tags:["find_pop_out_y"]}
execute as @e[tag=find_pop_out_y,sort=nearest,limit=1] at @s run function nincodedo:uniqueitems/abilities/ascend/find_pop_out_y
execute if score @s ascend_height_check < ascend_height_limit rhcconfig positioned ~ ~-1.2 ~ summon minecraft:block_display run function nincodedo:uniqueitems/abilities/ascend/change_to_good_location
execute if score @s ascend_height_check >= ascend_height_limit rhcconfig positioned ~ ~-1.2 ~ summon minecraft:block_display run function nincodedo:uniqueitems/abilities/ascend/change_to_bad_location
execute if dimension minecraft:the_nether if score @e[tag=find_pop_out_y,sort=nearest,limit=1] ascend_y matches 125.. positioned ~ ~-1.2 ~ summon minecraft:block_display run function nincodedo:uniqueitems/abilities/ascend/change_to_bad_location
kill @e[tag=find_pop_out_y,sort=nearest,limit=1]
execute if entity @e[tag=ascend_good] run scoreboard players set @s ascend_ok_start 1
execute if entity @e[tag=ascend_bad] run scoreboard players set @s ascend_ok_start 0
execute if entity @p[tag=ascending] as @e[tag=ascend] at @s run schedule function nincodedo:uniqueitems/abilities/ascend/follow_player 1t
