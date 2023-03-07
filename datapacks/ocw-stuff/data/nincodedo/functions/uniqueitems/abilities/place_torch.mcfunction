execute if score torchcheck rhcdata matches 1 unless block ~ ~-1 ~ #nincodedo:safe_replace if block ~ ~ ~ #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:torch
execute if score torchcheck rhcdata matches 1 if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~-1 ~ ~ #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=east] keep
execute if score torchcheck rhcdata matches 1 if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~1 ~ ~ #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=west] keep
execute if score torchcheck rhcdata matches 1 if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~ ~ ~-1 #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=south] keep
execute if score torchcheck rhcdata matches 1 if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~ ~ ~1 #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=north] keep

execute unless block ~ ~ ~ minecraft:torch unless block ~ ~ ~ minecraft:wall_torch run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:torch",Count:1b}}

tag @s remove torcharrow
