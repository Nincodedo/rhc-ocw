tag @s remove ascend_anchor_target
effect give @s minecraft:slow_falling 1 0 true
execute positioned as @e[tag=ascend_undo,sort=nearest,limit=1] run tp ~ ~1 ~
effect clear @s minecraft:blindness
kill @e[tag=ascend_undo,sort=nearest,limit=1]
execute at @s run playsound nincodedo:item.ascend.completely_out_of_ground player @a
function nincodedo:uniqueitems/abilities/ascend/reset_scores
