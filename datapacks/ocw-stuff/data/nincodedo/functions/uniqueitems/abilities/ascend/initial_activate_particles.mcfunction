execute as @e[tag=xSQ] at @s run particle minecraft:dust 0.988 0.961 0.898 1 ~ ~.2 ~ 1 0 0 1 20
execute as @e[tag=ySQ] at @s run particle minecraft:dust 0.988 0.961 0.898 1 ~ ~.2 ~ 0 0 1 1 20

execute as @a[tag=ascending] at @s unless entity @e[tag=north,distance=..10] run summon minecraft:area_effect_cloud ~ ~ ~-1 {Duration:30,Tags:["xSQ","north"]}
execute as @a[tag=ascending] at @s unless entity @e[tag=south,distance=..10] run summon minecraft:area_effect_cloud ~ ~ ~1 {Duration:30,Tags:["xSQ","south"]}
execute as @a[tag=ascending] at @s unless entity @e[tag=east,distance=..10] run summon minecraft:area_effect_cloud ~1 ~ ~ {Duration:30,Tags:["ySQ","east"]}
execute as @a[tag=ascending] at @s unless entity @e[tag=west,distance=..10] run summon minecraft:area_effect_cloud ~-1 ~ ~ {Duration:30,Tags:["ySQ","west"]}

execute as @e[tag=north] at @s run tp ~ ~ ~-0.1
execute as @e[tag=south] at @s run tp ~ ~ ~0.1
execute as @e[tag=east] at @s run tp ~0.1 ~ ~
execute as @e[tag=west] at @s run tp ~-0.1 ~ ~
