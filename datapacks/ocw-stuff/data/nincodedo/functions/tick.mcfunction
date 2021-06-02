execute as @e[type=minecraft:pillager,name=!"Salesman",limit=1] run data merge entity @s {CustomName: '{"text":"Salesman"}', CustomNameVisible: 1, KillMessage: '%s sold some wares to %s'}
execute store result score global current_day run time query day
function nincodedo:runsleepchecks
