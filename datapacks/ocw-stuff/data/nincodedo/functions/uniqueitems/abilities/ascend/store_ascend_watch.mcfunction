execute store result score @s ascend_x run data get entity @s Pos[0] 100
execute store result score @s ascend_y run data get entity @s Pos[1] 100
execute store result score @s ascend_z run data get entity @s Pos[2] 100
data modify storage nincodedo:storage ascend.player.Pos set from entity @s Pos
execute as @e[tag=ascend_action,sort=nearest,distance=..5,limit=1] store result score @s ascend_x run data get entity @s Pos[0] 100
execute as @e[tag=ascend_action,sort=nearest,distance=..5,limit=1] store result score @s ascend_y run data get entity @s Pos[1] 100
execute as @e[tag=ascend_action,sort=nearest,distance=..5,limit=1] store result score @s ascend_z run data get entity @s Pos[2] 100
data modify storage nincodedo:storage ascend.marker.Pos set from entity @e[tag=ascend_action,sort=nearest,distance=..5,limit=1] Pos

tellraw @a[tag=debug_logging,tag=debug_trace] [{"text":"Ascend Watch Positions: "},{"nbt":"ascend","storage":"nincodedo:storage"}]

scoreboard players remove @s ascend_accept_timeout 1
