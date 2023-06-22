execute unless block ~ ~-1 ~ #nincodedo:cannot_place_torch_on_top_of if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:torch

execute if block ~ ~-1 ~ #nincodedo:cannot_place_torch_on_top_of unless block ~-1 ~ ~ #nincodedo:cannot_place_torch_on_side_of if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=east] keep
execute if block ~ ~-1 ~ #nincodedo:cannot_place_torch_on_top_of unless block ~1 ~ ~ #nincodedo:cannot_place_torch_on_side_of if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=west] keep
execute if block ~ ~-1 ~ #nincodedo:cannot_place_torch_on_top_of unless block ~ ~ ~-1 #nincodedo:cannot_place_torch_on_side_of if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=south] keep
execute if block ~ ~-1 ~ #nincodedo:cannot_place_torch_on_top_of unless block ~ ~ ~1 #nincodedo:cannot_place_torch_on_side_of if block ~ ~ ~ #minecraft:replaceable run setblock ~ ~ ~ minecraft:wall_torch[facing=north] keep

execute if block ~ ~ ~ #nincodedo:torches run playsound minecraft:block.wood.place block @a

execute unless block ~ ~ ~ #nincodedo:torches run summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:torch"},Tags:["torchtorch"]}

execute unless block ~ ~ ~ #nincodedo:torches run data modify entity @e[sort=nearest,distance=0..1,limit=1,tag=torchtorch] Motion set from entity @s Motion

tag @s remove torcharrow
