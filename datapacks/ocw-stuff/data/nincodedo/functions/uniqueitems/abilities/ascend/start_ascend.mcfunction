scoreboard players set @s[gamemode=survival] ascend_prev_gamemode 0
scoreboard players set @s[gamemode=creative] ascend_prev_gamemode 1
scoreboard players set @s[gamemode=adventure] ascend_prev_gamemode 2
scoreboard players set @s[gamemode=spectator] ascend_prev_gamemode 3
scoreboard players set @s ascend_phase 1
scoreboard players set @s used_ms 0
scoreboard players reset @s ascend_initial_bg_loop
playsound nincodedo:item.ascend.start_jump_ding player @a ~ ~ ~ 1 1
playsound nincodedo:item.ascend.jump_kick player @a ~ ~ ~ 1 1
playsound nincodedo:item.ascend.jump_woosh player @a ~ ~ ~ 1 1
execute summon minecraft:marker run data merge entity @s {Tags:["ascend_undo"]}
summon minecraft:armor_stand ~ ~ ~ {Tags:["ascend_anchor"],NoGravity:1b,Invisible:1b,Marker:1b}
tag @s add ascend_anchor_target
ride @s mount @e[tag=ascend_anchor,sort=nearest,distance=..1,limit=1]
execute positioned ~ ~1 ~ unless entity @e[tag=ascend,distance=..1] run schedule function nincodedo:uniqueitems/abilities/ascend/continue_ascend 1t

schedule function nincodedo:uniqueitems/abilities/ascend/schedule_anchor_watch 1t 
advancement revoke @s only nincodedo:unique_items/ascend/use_ascend
