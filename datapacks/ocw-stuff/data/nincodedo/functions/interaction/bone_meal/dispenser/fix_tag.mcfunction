tag @s remove face_north
tag @s remove face_south
tag @s remove face_east
tag @s remove face_west

execute if block ~ ~ ~ minecraft:dispenser[facing=north] run tag @s face_north
execute if block ~ ~ ~ minecraft:dispenser[facing=south] run tag @s face_south
execute if block ~ ~ ~ minecraft:dispenser[facing=east] run tag @s face_east
execute if block ~ ~ ~ minecraft:dispenser[facing=west] run tag @s face_west
