# Tier 1
execute if entity @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:1}}]}] at @e[tag=magnetize,distance=..5,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["direction"]}
# Tier 2
execute if entity @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:2}}]}] at @e[tag=magnetize,distance=..10,limit=1,sort=nearest] run summon marker ~ ~ ~ {Tags:["direction"]}

execute as @e[tag=direction,limit=1] at @s facing entity @p feet positioned 0.0 0.0 0.0 run function nincodedo:items/magnet/get_magnet_motion
data modify entity @e[tag=magnetize,sort=nearest,limit=1] Motion set from storage nincodedo:storage MMotion

execute store result score @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:1}}]}] magnet_item_count run execute if entity @e[tag=magnetize,distance=..5,sort=nearest,limit=10]
execute store result score @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:2}}]}] magnet_item_count run execute if entity @e[tag=magnetize,distance=..10,sort=nearest,limit=20]

execute if entity @s[tag=active_magnet,scores={magnet_item_count=1..}] run schedule function nincodedo:items/magnet/scheduled_magnet_items 5t
