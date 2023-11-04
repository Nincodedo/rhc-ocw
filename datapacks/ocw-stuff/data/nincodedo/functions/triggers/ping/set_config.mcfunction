execute if score @s ping_config matches 1..16 store result score @s ping_color run scoreboard players get @s ping_config

scoreboard players enable @s ping_config
scoreboard players set @s ping_config -1
