execute unless block ~ ~-1 ~ #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:torch keep
execute if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~-1 ~ ~ #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=east] keep
execute if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~1 ~ ~ #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=west] keep
execute if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~ ~ ~-1 #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=south] keep
execute if block ~ ~-1 ~ #nincodedo:safe_replace unless block ~ ~ ~1 #nincodedo:safe_replace run setblock ~ ~ ~ minecraft:wall_torch[facing=north] keep

tag @s remove torcharrow
