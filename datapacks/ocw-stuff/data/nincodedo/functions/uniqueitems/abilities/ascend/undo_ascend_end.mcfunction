effect give @s minecraft:slow_falling 1 0 true
execute positioned as @e[tag=ascend_undo,sort=nearest,limit=1] run tp ~ ~1 ~
effect clear @s minecraft:blindness
gamemode survival
kill @e[tag=ascend_undo,sort=nearest,limit=1]
execute at @s run playsound nincodedo:item.ascend.completely_out_of_ground player @a ~ ~ ~ 1 1 1
function nincodedo:uniqueitems/abilities/ascend/reset_scores
