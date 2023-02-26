tag @s add youdidthis
spawnpoint @s ~ ~ ~
title @a times 0 100 20
title @s title {"text":"you did this", "color": "red"}
title @a[tag=!youdidthis] title {"selector": "@s", "color": "red", "extra": [" did this"]}
execute as @a run summon minecraft:lightning_bolt ~ -1 ~
execute as @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @s run summon minecraft:lightning_bolt ~10 ~ ~
execute as @s run summon minecraft:lightning_bolt ~ ~10 ~
execute as @s run summon minecraft:lightning_bolt ~ ~ ~10
execute as @s run summon minecraft:lightning_bolt ~5 ~ ~
execute in minecraft:overworld run weather thunder
scoreboard players add youdidthis rhcdata 1
execute if score youdidthis rhcdata matches 1 run function nincodedo:create_countdown
