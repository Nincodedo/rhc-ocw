execute if score @s ascend_height_check <= ascend_height_limit rhcconfig positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:replaceable run scoreboard players add @s ascend_height_check 1
execute if score @s ascend_height_check <= ascend_height_limit rhcconfig positioned ~ ~1 ~ if block ~ ~ ~ #minecraft:replaceable run function nincodedo:uniqueitems/abilities/ascend/find_ceiling
execute if score @s ascend_height_check < ascend_height_limit rhcconfig positioned ~ ~1 ~ unless block ~ ~ ~ #minecraft:replaceable run function nincodedo:uniqueitems/abilities/ascend/spawn_ceiling_square
execute if score @s ascend_height_check >= ascend_height_limit rhcconfig positioned ~ ~1 ~ unless block ~ ~ ~ #minecraft:replaceable run function nincodedo:uniqueitems/abilities/ascend/spawn_ceiling_square
