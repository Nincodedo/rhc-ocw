scoreboard objectives add clearday1tool1 dummy
scoreboard objectives add clearday1tool2 dummy
scoreboard objectives add clearday1tool3 dummy
scoreboard objectives add clearday1tool4 dummy
scoreboard objectives add clearday1tool5 dummy
scoreboard objectives add clearday1tools dummy

scoreboard players set @s clearday1tools 0

execute store result score @s clearday1tool1 run clear @s minecraft:golden_sword{Enchantments:[{id:"minecraft:vanishing_curse",lvl:2s}]}
execute store result score @s clearday1tool2 run clear @s minecraft:golden_pickaxe{Enchantments:[{id:"minecraft:vanishing_curse",lvl:2s}]}
execute store result score @s clearday1tool3 run clear @s minecraft:golden_axe{Enchantments:[{id:"minecraft:vanishing_curse",lvl:2s}]}
execute store result score @s clearday1tool4 run clear @s minecraft:golden_hoe{Enchantments:[{id:"minecraft:vanishing_curse",lvl:2s}]}
execute store result score @s clearday1tool5 run clear @s minecraft:golden_shovel{Enchantments:[{id:"minecraft:vanishing_curse",lvl:2s}]}

scoreboard players operation @s clearday1tools += @s clearday1tool1
scoreboard players operation @s clearday1tools += @s clearday1tool2
scoreboard players operation @s clearday1tools += @s clearday1tool3
scoreboard players operation @s clearday1tools += @s clearday1tool4
scoreboard players operation @s clearday1tools += @s clearday1tool5

tellraw @s[scores={clearday1tools=1}] {"text":"Aww, your Day 1 tool vanished..."}
tellraw @s[scores={clearday1tools=2..}] [{"text":"Aww, your "},{"score":{"name":"@s","objective":"clearday1tools"}},{"text":" Day 1 tools vanished..."}]

advancement revoke @s only nincodedo:rewards/removeday1tools
