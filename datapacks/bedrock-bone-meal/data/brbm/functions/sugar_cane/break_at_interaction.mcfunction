execute if entity @s[gamemode=creative] at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:sugar_cane run setblock ~ ~ ~ minecraft:air
execute if entity @s[gamemode=survival] at @e[tag=sugar_cane_interaction,sort=nearest,limit=1] if block ~ ~ ~ minecraft:sugar_cane run setblock ~ ~ ~ minecraft:air destroy
advancement revoke @s only brbm:sugar_cane/break_at_interaction
