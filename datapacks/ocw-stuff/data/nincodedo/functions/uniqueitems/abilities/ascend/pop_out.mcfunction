execute if block ~ ~-1 ~ minecraft:air run tp ~ ~1 ~
effect clear @s minecraft:blindness
tag @s remove ascending
scoreboard players set @s ascend_phase 4
playsound nincodedo:item.ascend.pop_out_head_ground player @a ~ ~ ~ 1 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ascend_action"]}
execute store result score @s ascend_accept_timeout run scoreboard players get ascend_accept_timeout rhcconfig
schedule function nincodedo:uniqueitems/abilities/ascend/watch_ascend_action 1t
