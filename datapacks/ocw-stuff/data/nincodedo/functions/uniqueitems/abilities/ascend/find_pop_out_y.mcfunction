execute store result score @s ascend_y run data get entity @s Pos[1]
execute if block ~ ~2 ~ minecraft:air if block ~ ~3 ~ minecraft:air run return 0 
tp ~ ~1 ~
execute positioned ~ ~1 ~ run function nincodedo:uniqueitems/abilities/ascend/find_pop_out_y
