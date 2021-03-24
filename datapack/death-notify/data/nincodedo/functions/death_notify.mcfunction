title @p[advancements={nincodedo:death_by_entity=true}] title {"text":"you did this", "color": "red"}
title @p[advancements={nincodedo:death_by_entity=false}] title {"selector": "@p", "color": "red", "extra": [" did this"]}
execute as @p run summon minecraft:lightning_bolt ~ ~ ~
execute as @p run summon minecraft:lightning_bolt ~10 ~ ~
execute as @p run summon minecraft:lightning_bolt ~ ~10 ~
execute as @p run summon minecraft:lightning_bolt ~ ~ ~10
execute as @p run summon minecraft:lightning_bolt ~5 ~ ~
weather thunder
function nincodedo:create_countdown
