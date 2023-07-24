execute store result score current_day rhcdata run time query day
execute store result score player_count rhcdata run list
execute store result score moon_phase rhcdata run scoreboard players get current_day rhcdata
scoreboard players operation moon_phase rhcdata %= 8 math
execute store result score moon_damage rhcdata run scoreboard players get 5 math
scoreboard players operation moon_damage rhcdata -= moon_phase rhcdata
execute if score moon_damage rhcdata matches ..0 run scoreboard players operation moon_damage rhcdata -= 2 math
execute if score moon_damage rhcdata matches ..-1 run scoreboard players operation moon_damage rhcdata *= m1 math

data merge entity @e[type=minecraft:pillager,name=!"Salesman",limit=1] {CustomName: '{"text":"Salesman"}', CustomNameVisible: 1, KillMessage: '%s sold some wares to %s'}

execute as @e[type=minecraft:wandering_trader,limit=1,tag=!traderswap] run function nincodedo:quests/add_trades

execute as @a run function nincodedo:advancements/open_gifts

execute as @a run function nincodedo:items/multiverse/tools/calculate_mined_blocks

execute unless entity @a[scores={ascend_phase=0..5}] run kill @e[tag=ascend_anchor]

execute store result score nnewdaytime rhcdata run time query daytime
execute if score nnewdaytime rhcdata < nolddaytime rhcdata run function nincodedo:rewards/calc_time_skip
execute store result score nolddaytime rhcdata run time query daytime

schedule function nincodedo:slowtick 2s
