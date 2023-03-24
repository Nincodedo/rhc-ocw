scoreboard objectives add used_ms minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add goggles dummy
scoreboard objectives add sheephorn dummy
scoreboard objectives add used_th minecraft.used:minecraft.goat_horn
scoreboard objectives add projectilelife dummy
scoreboard objectives add arrowshot minecraft.used:minecraft.bow

execute unless score torchbow rhcdata matches 1 run scoreboard players set torchbow rhcdata 0
execute unless score iridiumrod rhcdata matches 1 run scoreboard players set iridiumrod rhcdata 0
execute unless score mastersword rhcdata matches 1 run scoreboard players set mastersword rhcdata 0
execute unless score masterswordfirst rhcdata matches 1.. run scoreboard players set masterswordfirst rhcdata 0
execute unless score global goggles matches 1 run scoreboard players set global goggles 0
execute unless score global sheephorn matches 1 run scoreboard players set global sheephorn 0
execute unless score potionhorn rhcdata matches 1 run scoreboard players set potionhorn rhcdata 0
scoreboard players set config_torchbow_motion rhcdata 1
scoreboard players set config_ms_cooldown rhcdata 40
scoreboard players set config_ms_projlife rhcdata 30
scoreboard players set ms_cooldown rhcdata 0
