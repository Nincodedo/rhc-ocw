execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ minecraft:sugar_cane run summon minecraft:marker ~ ~ ~ {Tags:["find_sugar_cane"]}
execute anchored eyes positioned ^ ^ ^2 if block ~ ~ ~ minecraft:sugar_cane run summon minecraft:marker ~ ~ ~ {Tags:["find_sugar_cane"]}
execute anchored eyes positioned ^ ^ ^3 if block ~ ~ ~ minecraft:sugar_cane run summon minecraft:marker ~ ~ ~ {Tags:["find_sugar_cane"]}

execute store result score sc_x rhcdata run data get entity @e[tag=find_sugar_cane,sort=nearest,limit=1] Pos[0]
execute store result score sc_y rhcdata run data get entity @e[tag=find_sugar_cane,sort=nearest,limit=1] Pos[1]
execute store result score sc_z rhcdata run data get entity @e[tag=find_sugar_cane,sort=nearest,limit=1] Pos[2]

execute store result storage nincodedo:storage PosX double 1 run scoreboard players get sc_x rhcdata
execute store result storage nincodedo:storage PosY double 1 run scoreboard players get sc_y rhcdata
execute store result storage nincodedo:storage PosZ double 1 run scoreboard players get sc_z rhcdata

data modify entity @e[tag=find_sugar_cane,sort=nearest,limit=1] Pos[0] set from storage nincodedo:storage PosX
data modify entity @e[tag=find_sugar_cane,sort=nearest,limit=1] Pos[1] set from storage nincodedo:storage PosY
data modify entity @e[tag=find_sugar_cane,sort=nearest,limit=1] Pos[2] set from storage nincodedo:storage PosZ
execute as @e[tag=find_sugar_cane] at @s run tp ~0.5 ~ ~0.5

execute at @e[tag=find_sugar_cane,sort=nearest,limit=1] run summon minecraft:interaction ~ ~ ~ {width:1.0f,height:1.0f,response:true,Tags:["sugar_cane_interaction"]}

kill @e[tag=find_sugar_cane,sort=nearest,limit=3,distance=..3]

advancement revoke @s only nincodedo:interaction/sugar_cane/remove_interaction
