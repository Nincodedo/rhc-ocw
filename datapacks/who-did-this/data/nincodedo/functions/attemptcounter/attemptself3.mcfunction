tag @s remove heartattack2
tag @s add heartattack3
title @s times 0 70 20
title @s title [{"text":"Attempt #"},{"score":{"name":"global","objective":"attempt"}, "color": "red"}]
execute at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2
schedule function nincodedo:attemptcounter/attempt4 30t
