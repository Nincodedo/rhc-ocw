scoreboard objectives add dayCheck dummy
scoreboard players add @s dayCheck 0
execute store result score @s dayCheck run time query day
title @s times 0 70 20
title @s title [{"text":"Dawn Of The "},{"score":{"name":"@s","objective":"dayCheck"}},{"text":"th Day"}]
execute at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ .75 .2
scoreboard objectives remove dayCheck
