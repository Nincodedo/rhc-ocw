execute store result score @s ascend_y run data get entity @s Pos[1] 100
execute as @e[tag=ascend_action,sort=nearest,distance=..5,limit=1] store result score @s ascend_y run data get entity @s Pos[1] 100
scoreboard players remove @s ascend_accept_timeout 1
