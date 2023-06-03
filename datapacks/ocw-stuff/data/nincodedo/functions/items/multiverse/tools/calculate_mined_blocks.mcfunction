scoreboard players set @s mined_total 0
scoreboard players operation @s mined_total += @s mined_stone
scoreboard players operation @s mined_total += @s mined_coal
scoreboard players operation @s mined_total += @s mined_iron

execute store result score @s[tag=holdingcobaltpickaxe] cobalt_momentum run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:efficiency"}].lvl
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches ..5 if score @s mined_total matches 3.. run item modify entity @s weapon.mainhand nincodedo:multiverse/tools/increase_efficiency_by_one
scoreboard players add @s[tag=holdingcobaltpickaxe,scores={cobalt_momentum=6..}] cobalt_momentum_max 1
item modify entity @s[tag=holdingcobaltpickaxe,scores={cobalt_momentum_max=4..}] weapon.mainhand nincodedo:multiverse/tools/reset_efficiency
execute if score @s[tag=holdingcobaltpickaxe] cobalt_momentum matches 1.. if score @s mined_total matches ..2 run item modify entity @s weapon.mainhand nincodedo:multiverse/tools/reset_efficiency
scoreboard players reset @s[scores={cobalt_momentum_max=4..}] cobalt_momentum
scoreboard players reset @s[scores={cobalt_momentum_max=4..}] cobalt_momentum_max
scoreboard players reset @s[tag=!holdingcobaltpickaxe] cobalt_momentum
scoreboard players reset @s[tag=!holdingcobaltpickaxe] cobalt_momentum_max

scoreboard players reset @s mined_stone
scoreboard players reset @s mined_coal
scoreboard players reset @s mined_iron
