playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.7 1 0.5
item modify entity @s weapon.mainhand nincodedo:activate_magnet
scoreboard players set @s magnet_active_time 0
tag @s add active_magnet
execute if entity @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:1}}]}] run tag @e[type=item,distance=..5,sort=nearest,limit=10] add magnetize
execute if entity @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:2}}]}] run tag @e[type=item,distance=..10,sort=nearest,limit=20] add magnetize
execute store result score @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:1}}]}] magnet_item_count run execute if entity @e[tag=magnetize,distance=..5,sort=nearest,limit=10]
execute store result score @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:2}}]}] magnet_item_count run execute if entity @e[tag=magnetize,distance=..10,sort=nearest,limit=20]
execute if entity @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:1}}]}] as @e[tag=magnetize,distance=..5,sort=nearest,limit=10] run data modify entity @s Owner set from entity @p UUID
execute if entity @s[nbt={Inventory:[{tag:{NinUnique:"Magnet",NinTier:2}}]}] as @e[tag=magnetize,distance=..10,sort=nearest,limit=20] run data modify entity @s Owner set from entity @p UUID
kill @e[tag=store_id,sort=nearest,limit=1]

execute store result score @s uuid0 run data get entity @s UUID[0]
execute store result score @s uuid1 run data get entity @s UUID[1]
execute store result score @s uuid2 run data get entity @s UUID[2]
execute store result score @s uuid3 run data get entity @s UUID[3]

schedule function nincodedo:items/magnet/activation_timer 1t
schedule function nincodedo:items/magnet/scheduled_magnet_items 1t
