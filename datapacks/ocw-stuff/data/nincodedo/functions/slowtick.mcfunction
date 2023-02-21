execute store result score global current_day run time query day
execute store result score global player_count run list

execute as @e[type=minecraft:pillager,name=!"Salesman",limit=1] run data merge entity @s {CustomName: '{"text":"Salesman"}', CustomNameVisible: 1, KillMessage: '%s sold some wares to %s'}

execute as @e[type=minecraft:wandering_trader,limit=1,tag=!traderswap] run function nincodedo:quests/tradermap

schedule function nincodedo:slowtick 5s replace
