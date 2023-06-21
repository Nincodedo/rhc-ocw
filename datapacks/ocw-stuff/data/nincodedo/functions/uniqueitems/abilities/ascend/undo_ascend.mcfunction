scoreboard players set @s ascend_phase 5
kill @e[tag=ascend_action,sort=nearest,limit=1]
tp ~ ~-2 ~
effect give @s minecraft:blindness infinite 0 false
execute at @s run playsound nincodedo:item.ascend.undo player @a ~ ~ ~ 1 1 1
schedule function nincodedo:uniqueitems/abilities/ascend/schedule_undo_ascend 1s
