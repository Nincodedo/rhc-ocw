tag @s add traderswap_map
data modify entity @s Offers.Recipes append value {buy:{Count:1b,id:"minecraft:emerald"},buyB:{Count:1b,id:"minecraft:compass"},maxUses:1,uses:0,demand:1,priceMultiplier:0.05,rewardExp:true,sell:{Count:1b,id:"minecraft:map"}}
item replace entity @s weapon with map
scoreboard players set emeraldsmin rhcdata 15
scoreboard players set emeraldsmax rhcdata 25
loot replace entity @s weapon loot nincodedo:rng/emeralds
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
loot replace entity @s weapon loot nincodedo:ocw_map
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
item replace entity @s weapon with air
