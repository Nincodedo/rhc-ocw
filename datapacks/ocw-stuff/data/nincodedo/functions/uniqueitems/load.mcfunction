scoreboard objectives add mastersword dummy
scoreboard objectives add used_ms minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add goggles dummy
scoreboard objectives add sheephorn dummy
scoreboard objectives add used_th minecraft.used:minecraft.goat_horn

execute unless score torchbow rhcdata matches 1 run scoreboard players set torchbow rhcdata 0
execute unless score iridiumrod rhcdata matches 1 run scoreboard players set iridiumrod rhcdata 0
execute unless score global mastersword matches 1..1 run scoreboard players set global mastersword 0
execute unless score global goggles matches 1..1 run scoreboard players set global goggles 0
execute unless score global sheephorn matches 1..1 run scoreboard players set global sheephorn 0
