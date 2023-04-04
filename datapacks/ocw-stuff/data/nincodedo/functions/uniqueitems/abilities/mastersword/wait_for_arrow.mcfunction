execute as @e[tag=projectiles,nbt={inBlockState:{}}] run kill @s
execute as @e[tag=projectiles] run scoreboard players add @s projectilelife 1
execute as @e[tag=projectiles] if score @s projectilelife > config_ms_projlife rhcconfig run kill @s
execute as @e[tag=projectiles] at @s run particle dust 0.231 0.973 1.000 1 ~ ~ ~ 0.125 0.125 0.125 0.1 10 normal
execute as @e[tag=projectiles] at @s run particle dust 1.000 1.000 1.000 1 ~ ~ ~ 0.125 0.125 0.125 0.1 3 normal
execute as @e[tag=projectiles] at @s run particle dust 0.122 0.384 1.000 1 ~ ~ ~ 0.125 0.125 0.125 0.1 3 normal
execute as @e[tag=projectiles] at @s run damage @e[distance=..1.7,tag=!ms_beam_safe,type=!minecraft:arrow,limit=1] 3 nincodedo:sword_beam by @p[nbt={Inventory:[{tag:{NinUnique:"MS"}}]}] from @p[nbt={Inventory:[{tag:{NinUnique:"MS"}}]}]

execute if entity @e[tag=projectiles] run schedule function nincodedo:uniqueitems/abilities/mastersword/wait_for_arrow 1t
execute unless entity @e[tag=projectiles] run tag @a[tag=ms_beam_safe] remove ms_beam_safe
