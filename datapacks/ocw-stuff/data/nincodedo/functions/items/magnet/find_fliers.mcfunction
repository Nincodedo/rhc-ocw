execute as @e[tag=magnetize] store result score @s uuid0 run data get entity @s Owner[0]
execute as @e[tag=magnetize] store result score @s uuid1 run data get entity @s Owner[1]
execute as @e[tag=magnetize] store result score @s uuid2 run data get entity @s Owner[2]
execute as @e[tag=magnetize] store result score @s uuid3 run data get entity @s Owner[3]

execute if score @s uuid0 = @e[tag=magnetize,sort=nearest,limit=1] uuid0 if score @s uuid1 = @e[tag=magnetize,sort=nearest,limit=1] uuid1 if score @s uuid2 = @e[tag=magnetize,sort=nearest,limit=1] uuid2 if score @s uuid3 = @e[tag=magnetize,sort=nearest,limit=1] uuid3 as @e[tag=magnetize,sort=nearest,limit=1] run tp ~ ~ ~

execute if entity @e[tag=magnetize] run schedule function nincodedo:items/magnet/schedule_find_fliers
