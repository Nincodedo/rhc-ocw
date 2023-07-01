tellraw @a[tag=debug_logging,tag=debug_trace] {"text": "[Debug] Entering watch_ascend_action"}
title @a[tag=!no_ascend_tutorial_plz,scores={ascend_phase=4}] actionbar [{"keybind":"key.jump","color":"white","extra":[[{"text":": "}],{"translate":"gui.ascend.tutorial_prompt.exit","fallback":"Exit"},{"text":", "}]},{"keybind":"key.sneak","color":"white","extra":[[{"text":": "}],{"translate":"dataPack.validation.back","fallback":"Go Back"}]}]
execute as @a[scores={ascend_phase=4}] at @s run function nincodedo:uniqueitems/abilities/ascend/store_ascend_watch
execute as @a[scores={ascend_phase=4}] at @s if score @s ascend_accept_timeout matches ..0 run tellraw @a[tag=debug_logging] {"text": "[Debug] Accept ascend on timeout"}
execute as @a[scores={ascend_phase=4}] at @s if score @s ascend_accept_timeout matches ..0 run function nincodedo:uniqueitems/abilities/ascend/accept_ascend
execute as @a[scores={ascend_phase=4}] at @s unless score @s ascend_x = @e[tag=ascend_action,sort=nearest,limit=1] ascend_x run tellraw @a[tag=debug_logging] {"text": "[Debug] Moved on x, undo"}
execute as @a[scores={ascend_phase=4}] at @s unless score @s ascend_x = @e[tag=ascend_action,sort=nearest,limit=1] ascend_x run function nincodedo:uniqueitems/abilities/ascend/undo_ascend
execute as @a[scores={ascend_phase=4}] at @s unless score @s ascend_z = @e[tag=ascend_action,sort=nearest,limit=1] ascend_z run tellraw @a[tag=debug_logging] {"text": "[Debug] Moved on z, undo"}
execute as @a[scores={ascend_phase=4}] at @s unless score @s ascend_z = @e[tag=ascend_action,sort=nearest,limit=1] ascend_z run function nincodedo:uniqueitems/abilities/ascend/undo_ascend
execute as @a[scores={ascend_phase=4}] at @s if score @s ascend_y > @e[tag=ascend_action,sort=nearest,limit=1] ascend_y run tellraw @a[tag=debug_logging] {"text": "[Debug] Accept ascend by moving up"}
execute as @a[scores={ascend_phase=4}] at @s if score @s ascend_y > @e[tag=ascend_action,sort=nearest,limit=1] ascend_y run function nincodedo:uniqueitems/abilities/ascend/accept_ascend
execute as @a[scores={ascend_phase=4}] if score @s ascend_y < @e[tag=ascend_action,sort=nearest,limit=1] ascend_y at @s run tellraw @a[tag=debug_logging] {"text": "[Debug] Undo ascend by moving down"}
execute as @a[scores={ascend_phase=4}] if score @s ascend_y < @e[tag=ascend_action,sort=nearest,limit=1] ascend_y at @s run function nincodedo:uniqueitems/abilities/ascend/undo_ascend
execute as @a[scores={ascend_phase=4}] at @s if score @s ascend_y = @e[tag=ascend_action,sort=nearest,limit=1] ascend_y run schedule function nincodedo:uniqueitems/abilities/ascend/watch_ascend_action 1t
