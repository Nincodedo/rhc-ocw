tag @s add ascending
scoreboard players set @s ascend_height_check 0
scoreboard players set @s ascend_phase 0
scoreboard players set @s used_ms 0
scoreboard players set @s ascend_ok_start 0
scoreboard players set @s ascend_initial_bg_loop 60
playsound nincodedo:item.ascend.initial_activate player @a ~ ~ ~ 0.75
function nincodedo:uniqueitems/abilities/ascend/find_ceiling

schedule function nincodedo:uniqueitems/abilities/ascend/initial_activate_loop_bg 1t
advancement revoke @s only nincodedo:unique_items/ascend/use_initial
