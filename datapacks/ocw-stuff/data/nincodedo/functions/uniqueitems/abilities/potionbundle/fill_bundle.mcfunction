scoreboard players reset total_health rhcdata
scoreboard players operation total_health rhcdata += @a health
execute store result score average_health rhcdata run scoreboard players get total_health rhcdata
scoreboard players operation average_health rhcdata /= player_count rhcdata

loot spawn ~ ~2 ~ loot nincodedo:uniqueitems/potionbundle/spawn_potion
tag @e[type=minecraft:item,sort=nearest,limit=1,nbt={Item:{tag:{NinUnique:"UnlimitedPotion"}}}] add unlimitedpotion
data modify storage nincodedo:potions spawnedpotion set from entity @e[tag=unlimitedpotion,sort=nearest,limit=1] Item
kill @e[tag=unlimitedpotion,sort=nearest,limit=1]

item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}]}] weapon.offhand nincodedo:potionbundle/addspawnedpotion

execute store result score potionbundlecount rhcdata run data get entity @s Inventory[{tag:{NinUnique:"PotionBundle"}}].tag.Items

execute if score potionbundlecount rhcdata matches ..7 run function nincodedo:uniqueitems/abilities/potionbundle/fill_bundle
