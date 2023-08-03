execute as @e[tag=sheepprojectile,predicate=nincodedo:is/entity/on_ground] run effect give @s minecraft:invisibility 5 1 true
execute as @e[tag=sheepprojectile,predicate=nincodedo:is/entity/on_ground] run tp ~ -100 ~
execute as @e[tag=sheepprojectile] at @s if block ~ ~ ~ #nincodedo:fluids run effect give @s minecraft:invisibility 5 1 true
execute as @e[tag=sheepprojectile] at @s if block ~ ~ ~ #nincodedo:fluids run tp ~ -100 ~

execute if entity @e[tag=sheepprojectile] run schedule function nincodedo:uniqueitems/abilities/move_projectile_sheep_to_a_nice_farm 1t
