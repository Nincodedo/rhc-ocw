execute if block ~ ~-1 ~ minecraft:air run tp ~ ~1 ~
tag @s remove ascend_anchor_target
ride @s dismount
kill @e[tag=ascend_anchor,sort=nearest,distance=..1,limit=1]
effect clear @s minecraft:blindness
tag @s remove ascending
scoreboard players set @s ascend_phase 4
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["ascend_action"]}
tp @s @e[tag=ascend_action,sort=nearest,distance=..1,limit=1]
execute at @s if block ~ ~1 ~ minecraft:water run playsound nincodedo:item.ascend.pop_out_head_water player @a ~ ~2 ~ 1 1
execute at @s run playsound nincodedo:item.ascend.pop_out_head_ground player @a ~ ~2 ~ 1 1
execute store result score @s ascend_accept_timeout run scoreboard players get ascend_accept_timeout rhcconfig
schedule function nincodedo:uniqueitems/abilities/ascend/watch_ascend_action 1t
