data modify entity @s Offers.Recipes append value {buy:{Count:1b,id:"minecraft:emerald"},buyB:{Count:1b,id:"minecraft:diamond_pickaxe"},maxUses:1,uses:0,demand:1,priceMultiplier:0.05,rewardExp:true,sell:{Count:1b,id:"minecraft:diamond_pickaxe"}}
item replace entity @s weapon with minecraft:diamond_pickaxe
scoreboard players set emeraldsmin rhcdata 30
scoreboard players set emeraldsmax rhcdata 50
loot replace entity @s weapon loot nincodedo:rng/emeralds
data modify entity @s Offers.Recipes[-1].buy set from entity @s HandItems[0]
loot replace entity @s weapon loot nincodedo:items/multiverse/tools/cobalt_pickaxe
data modify entity @s Offers.Recipes[-1].sell set from entity @s HandItems[0]
item replace entity @s weapon with air
scoreboard players set one math 1
execute if score player_count rhcdata matches 1.. store result storage nincodedo:storage playercount int 1 run scoreboard players get player_count rhcdata
execute unless score player_count rhcdata matches 1.. store result storage nincodedo:storage playercount int 1 run scoreboard players get one math
data modify entity @s Offers.Recipes[-1].maxUses set from storage nincodedo:storage playercount
data merge entity @s {CustomName:'{"text":"Traveling Merchant"}',CustomNameVisible:1}
