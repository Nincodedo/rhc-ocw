execute as @a[scores={ascend_phase=4}] at @s run function nincodedo:uniqueitems/abilities/ascend/store_ascend_watch
execute as @a[scores={ascend_phase=4}] if score @s ascend_accept_timeout matches ..0 run function nincodedo:uniqueitems/abilities/ascend/accept_ascend
execute as @a[scores={ascend_phase=4}] if score @s ascend_y > @e[tag=ascend_action,sort=nearest,limit=1] ascend_y run function nincodedo:uniqueitems/abilities/ascend/accept_ascend
execute as @a[scores={ascend_phase=4}] if score @s ascend_y < @e[tag=ascend_action,sort=nearest,limit=1] ascend_y at @s run function nincodedo:uniqueitems/abilities/ascend/undo_ascend
execute as @a[scores={ascend_phase=4}] if score @s ascend_y = @e[tag=ascend_action,sort=nearest,limit=1] ascend_y run schedule function nincodedo:uniqueitems/abilities/ascend/watch_ascend_action 1t
