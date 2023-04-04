stopsound @a block minecraft:block.dispenser.fail
playsound minecraft:block.dispenser.dispense block @a ~ ~ ~

execute if entity @s[tag=face_north] positioned ~ ~ ~-1 summon minecraft:marker run tag @s add dispense_bone_meal_here
execute if entity @s[tag=face_south] positioned ~ ~ ~1 summon minecraft:marker run tag @s add dispense_bone_meal_here
execute if entity @s[tag=face_east] positioned ~1 ~ ~ summon minecraft:marker run tag @s add dispense_bone_meal_here
execute if entity @s[tag=face_west] positioned ~-1 ~ ~ summon minecraft:marker run tag @s add dispense_bone_meal_here

execute if score @s sugarcaneheight matches 2 at @e[tag=dispense_bone_meal_here,sort=nearest,limit=1] if block ~ ~1 ~ minecraft:sugar_cane run setblock ~ ~2 ~ minecraft:sugar_cane
execute if score @s sugarcaneheight matches 1..2 at @e[tag=dispense_bone_meal_here,sort=nearest,limit=1] unless block ~ ~1 ~ minecraft:sugar_cane run setblock ~ ~1 ~ minecraft:sugar_cane
execute if score @s sugarcaneheight matches 1 at @e[tag=dispense_bone_meal_here,sort=nearest,limit=1] unless block ~ ~2 ~ minecraft:sugar_cane run setblock ~ ~2 ~ minecraft:sugar_cane
execute if score @s sugarcaneheight matches 1..2 at @e[tag=dispense_bone_meal_here,sort=nearest,limit=1] run particle minecraft:happy_villager ~ ~.5 ~ 0.25 0.25 0.25 .75 9

kill @e[tag=dispense_bone_meal_here,sort=nearest,limit=1]

execute store success score @s dispenser_slot0 run data get block ~ ~ ~ Items[{Slot:0b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot1 run data get block ~ ~ ~ Items[{Slot:1b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot2 run data get block ~ ~ ~ Items[{Slot:2b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot3 run data get block ~ ~ ~ Items[{Slot:3b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot4 run data get block ~ ~ ~ Items[{Slot:4b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot5 run data get block ~ ~ ~ Items[{Slot:5b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot6 run data get block ~ ~ ~ Items[{Slot:6b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot7 run data get block ~ ~ ~ Items[{Slot:7b,id:"minecraft:bone_meal"}].Count
execute store success score @s dispenser_slot8 run data get block ~ ~ ~ Items[{Slot:8b,id:"minecraft:bone_meal"}].Count

scoreboard players set @s rngmin 1
scoreboard players set @s rngmax 0
scoreboard players operation @s rngmax += @s dispenser_slot0
scoreboard players operation @s rngmax += @s dispenser_slot1
scoreboard players operation @s rngmax += @s dispenser_slot2
scoreboard players operation @s rngmax += @s dispenser_slot3
scoreboard players operation @s rngmax += @s dispenser_slot4
scoreboard players operation @s rngmax += @s dispenser_slot5
scoreboard players operation @s rngmax += @s dispenser_slot6
scoreboard players operation @s rngmax += @s dispenser_slot7
scoreboard players operation @s rngmax += @s dispenser_slot8

execute store result score @s rhcdata run loot spawn ~ ~ ~ loot nincodedo:rng/score

execute if score @s dispenser_slot0 = @s rhcdata run item modify block ~ ~ ~ container.0 nincodedo:general/remove_one_item
execute if score @s dispenser_slot0 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot1 = @s rhcdata run item modify block ~ ~ ~ container.1 nincodedo:general/remove_one_item
execute if score @s dispenser_slot1 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot2 = @s rhcdata run item modify block ~ ~ ~ container.2 nincodedo:general/remove_one_item
execute if score @s dispenser_slot2 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot3 = @s rhcdata run item modify block ~ ~ ~ container.3 nincodedo:general/remove_one_item
execute if score @s dispenser_slot3 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot4 = @s rhcdata run item modify block ~ ~ ~ container.4 nincodedo:general/remove_one_item
execute if score @s dispenser_slot4 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot5 = @s rhcdata run item modify block ~ ~ ~ container.5 nincodedo:general/remove_one_item
execute if score @s dispenser_slot5 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot6 = @s rhcdata run item modify block ~ ~ ~ container.6 nincodedo:general/remove_one_item
execute if score @s dispenser_slot6 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot7 = @s rhcdata run item modify block ~ ~ ~ container.7 nincodedo:general/remove_one_item
execute if score @s dispenser_slot7 matches 1 run scoreboard players remove @s rhcdata 1
execute if score @s dispenser_slot8 = @s rhcdata run item modify block ~ ~ ~ container.8 nincodedo:general/remove_one_item
execute if score @s dispenser_slot8 matches 1 run scoreboard players remove @s rhcdata 1
