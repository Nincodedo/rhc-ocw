gamemode spectator
scoreboard players set @s ascend_phase 1
scoreboard players set @s used_ms 0
scoreboard players reset @s ascend_initial_bg_loop
playsound nincodedo:item.ascend.start_jump_ding player @a ~ ~ ~ 1 1 1
playsound nincodedo:item.ascend.jump_kick player @a ~ ~ ~ 1 1 1
playsound nincodedo:item.ascend.jump_woosh player @a ~ ~ ~ 1 1 1
execute summon minecraft:marker run data merge entity @s {Tags:["ascend_undo"]}
execute positioned ~ ~1 ~ unless entity @e[tag=ascend,distance=..1] run schedule function nincodedo:uniqueitems/abilities/ascend/continue_ascend 1t
advancement revoke @s only nincodedo:unique_items/ascend/use_ascend
