execute as @e[tag=sheepprojectile,nbt={OnGround:1b}] run effect give @s minecraft:invisibility 5 1 true
execute as @e[tag=sheepprojectile,nbt={OnGround:1b}] run tp ~ -1 ~
execute as @e[tag=sheepprojectile,nbt={OnGround:1b}] run kill @s
execute as @e[tag=sheepprojectile] positioned as @s run execute if block ~ ~ ~ minecraft:water run effect give @s minecraft:invisibility 5 1 true
execute as @e[tag=sheepprojectile] positioned as @s run execute if block ~ ~ ~ minecraft:water run tp ~ -1 ~
execute as @e[tag=sheepprojectile] positioned as @s run execute if block ~ ~ ~ minecraft:water run kill @s
execute as @e[tag=sheepprojectile] positioned as @s run execute if block ~ ~ ~ minecraft:lava run effect give @s minecraft:invisibility 5 1 true
execute as @e[tag=sheepprojectile] positioned as @s run execute if block ~ ~ ~ minecraft:lava run tp ~ -1 ~
execute as @e[tag=sheepprojectile] positioned as @s run execute if block ~ ~ ~ minecraft:lava run kill @s

execute if entity @e[tag=sheepprojectile] run schedule function nincodedo:uniqueitems/abilities/move_projectile_sheep_to_a_nice_farm 1t replace
