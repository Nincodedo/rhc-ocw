title @p[advancements={nincodedo:you_did_this=true}] title {"text":"you did this", "color": "red"}
title @a[advancements={nincodedo:you_did_this=false}] title {"selector": "@p", "color": "red", "extra": [" did this"]}
execute as @p run summon minecraft:lightning_bolt ~ ~ ~
execute as @p run summon minecraft:lightning_bolt ~10 ~ ~
execute as @p run summon minecraft:lightning_bolt ~ ~10 ~
execute as @p run summon minecraft:lightning_bolt ~ ~ ~10
execute as @p run summon minecraft:lightning_bolt ~5 ~ ~
weather thunder
function nincodedo:create_countdown
