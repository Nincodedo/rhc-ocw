tag @s add traderswap

scoreboard players set @s rngmin 2
scoreboard players set @s rngmax 5
execute store result score traderng rhcdata run loot spawn ~ ~ ~ loot nincodedo:rng/score

execute if score traderng rhcdata matches 2 run function nincodedo:quests/add_map_trade
execute if score traderng rhcdata matches 3.. run function nincodedo:quests/add_pickaxe_trade
