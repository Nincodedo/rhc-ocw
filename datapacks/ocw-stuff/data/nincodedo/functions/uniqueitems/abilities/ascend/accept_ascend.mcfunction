execute unless block ~ ~ ~ #minecraft:replaceable run tp ~ ~1 ~
execute unless block ~ ~1 ~ #minecraft:replaceable run tp ~ ~2 ~
kill @e[tag=ascend_action,sort=nearest,limit=1]
kill @e[tag=ascend_undo,sort=nearest,limit=1]
effect give @s minecraft:slow_falling 1 0 true
playsound nincodedo:item.ascend.completely_out_of_ground player @a
function nincodedo:uniqueitems/abilities/ascend/reset_scores
