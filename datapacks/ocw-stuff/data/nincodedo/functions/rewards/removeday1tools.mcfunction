scoreboard objectives add clearday1tools dummy

scoreboard players set @s clearday1tools 0

execute store result score @s clearday1tools run clear @s #nincodedo:day1tools{Enchantments:[{id:"minecraft:vanishing_curse",lvl:2s}]}

tellraw @s[scores={clearday1tools=1}] {"text":"Aww, your Day 1 tool vanished..."}
tellraw @s[scores={clearday1tools=2..}] [{"text":"Aww, your "},{"score":{"name":"@s","objective":"clearday1tools"}},{"text":" Day 1 tools vanished..."}]

advancement revoke @s only nincodedo:rewards/removeday1tools
