summon minecraft:marker ~ ~ ~ {Tags:["bone_meal_dispenser"]}

execute if block ~ ~ ~ minecraft:command_block{CustomName:'{"text":"N"}'} run tag @e[tag=bone_meal_dispenser,sort=nearest,limit=1] add face_north
execute if block ~ ~ ~ minecraft:command_block{CustomName:'{"text":"S"}'} run tag @e[tag=bone_meal_dispenser,sort=nearest,limit=1] add face_south
execute if block ~ ~ ~ minecraft:command_block{CustomName:'{"text":"E"}'} run tag @e[tag=bone_meal_dispenser,sort=nearest,limit=1] add face_east
execute if block ~ ~ ~ minecraft:command_block{CustomName:'{"text":"W"}'} run tag @e[tag=bone_meal_dispenser,sort=nearest,limit=1] add face_west
