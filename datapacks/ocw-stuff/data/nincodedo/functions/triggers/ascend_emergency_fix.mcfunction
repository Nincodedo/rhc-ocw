effect give @s minecraft:slow_falling 5 0 true
effect clear @s minecraft:blindness
execute if entity @e[tag=ascend_undo] at @e[tag=ascend_undo] run tp ~ ~ ~
kill @e[tag=ascend_undo]
function nincodedo:uniqueitems/abilities/ascend/reset_scores
gamemode survival @s[gamemode=spectator]
tag @s remove ascending
scoreboard players reset @s ascend_emergency_fix
