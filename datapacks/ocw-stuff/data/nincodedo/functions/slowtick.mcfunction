execute store result score current_day rhcdata run time query day
execute store result score player_count rhcdata run list

data merge entity @e[type=minecraft:pillager,name=!"Salesman",limit=1] {CustomName: '{"text":"Salesman"}', CustomNameVisible: 1, KillMessage: '%s sold some wares to %s'}

execute as @e[type=minecraft:wandering_trader,limit=1,tag=!traderswap] run function nincodedo:quests/tradermap

execute as @a run function nincodedo:advancements/open_gifts

execute as @a run function nincodedo:items/multiverse/tools/calculate_mined_blocks

schedule function nincodedo:slowtick 2s
