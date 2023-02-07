execute store result score global current_day run time query day
execute store result score global player_count run list

execute if score global mastersword matches 1 as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",tag:{NinUnique:"MS",Enchantments:[{}]}}}] run kill @s
execute if score global mastersword matches 0 as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",tag:{NinUnique:"MS",Enchantments:[{}]}}}] positioned as @s at @s run title @p[distance=..6,predicate=!nincodedo:isentitymetallink,tag=!seenworthymessage] actionbar {"text":"Only a worthy hero may claim the sword"}
execute if score global mastersword matches 0 as @e[type=minecraft:item,nbt={Item:{id:"minecraft:diamond_sword",tag:{NinUnique:"MS",Enchantments:[{}]}}}] positioned as @s at @s run tag @p[distance=..6,predicate=!nincodedo:isentitymetallink] add seenworthymessage

schedule function nincodedo:slowtick 5s
