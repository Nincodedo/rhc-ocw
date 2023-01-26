tag @s add youdidthis
spawnpoint @s ~ ~ ~
title @a times 0 100 20
title @s title {"text":"you did this", "color": "red"}
title @a[tag=!youdidthis] title {"selector": "@s", "color": "red", "extra": [" did this"]}
execute as @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @s run summon minecraft:lightning_bolt ~10 ~ ~
execute as @s run summon minecraft:lightning_bolt ~ ~10 ~
execute as @s run summon minecraft:lightning_bolt ~ ~ ~10
execute as @s run summon minecraft:lightning_bolt ~5 ~ ~
weather thunder
function nincodedo:create_countdown
