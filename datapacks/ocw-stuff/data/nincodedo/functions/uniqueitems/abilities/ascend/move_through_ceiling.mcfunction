execute as @a[scores={ascend_phase=2}] at @s if block ~ ~2 ~ air if block ~ ~3 ~ air run scoreboard players set @s ascend_phase 3
execute as @a[scores={ascend_phase=2}] at @s on vehicle run tp ~ ~1 ~
execute as @a[scores={ascend_phase=2}] run schedule function nincodedo:uniqueitems/abilities/ascend/move_through_ceiling 2t
execute as @a[scores={ascend_phase=3}] at @s run function nincodedo:uniqueitems/abilities/ascend/pop_out
