scoreboard players set @s ascend_anchor_check 0

execute on vehicle if entity @s[tag=ascend_anchor] run scoreboard players set @s ascend_anchor_check 1
execute if score @s ascend_anchor_check matches 0 run scoreboard players set @s ascend_phase 5
execute if score @s ascend_anchor_check matches 0 run function nincodedo:uniqueitems/abilities/ascend/undo_ascend_end

execute if entity @a[tag=ascend_anchor_target] run schedule function nincodedo:uniqueitems/abilities/ascend/schedule_anchor_watch 1t
