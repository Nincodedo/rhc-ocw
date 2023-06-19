scoreboard players reset total_health rhcdata
scoreboard players operation total_health rhcdata += @a health
execute store result score average_health rhcdata run scoreboard players get total_health rhcdata
scoreboard players operation average_health rhcdata /= player_count rhcdata

scoreboard players set one math 1
scoreboard players set @s rngmin 0
execute store result score @s rngmax run data get storage nincodedo:potions goodpotions
scoreboard players operation @s rngmax -= one math
execute store result score @s potionbundlerng run loot spawn ~ ~ ~ loot nincodedo:rng/score

item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}]}] weapon.offhand nincodedo:potionbundle/addgoodpotion

execute store result score potionbundlecount rhcdata run data get entity @s Inventory[{tag:{NinUnique:"PotionBundle"}}].tag.Items

execute if score potionbundlecount rhcdata matches ..7 run function nincodedo:uniqueitems/abilities/potionbundle/fill_bundle
