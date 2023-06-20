scoreboard players reset total_health rhcdata
scoreboard players operation total_health rhcdata += @a health
execute store result score average_health rhcdata run scoreboard players get total_health rhcdata
scoreboard players operation average_health rhcdata /= player_count rhcdata

scoreboard players set @s rngmin 1
scoreboard players set @s rngmax 8
execute store result score @s potionbundlerng run loot spawn ~ ~ ~ loot nincodedo:rng/score

tellraw @a[tag=debug_logging] [{"text":"[Debug] Potion Bundle RNG: "},{"score":{"name":"@s","objective":"potionbundlerng"}}]

execute if score @s potionbundlerng matches 1 if score average_health rhcdata matches ..6 run function nincodedo:uniqueitems/abilities/potionbundle/add_healing_potion
execute if score @s potionbundlerng matches 1 if score average_health rhcdata matches 18.. run function nincodedo:uniqueitems/abilities/potionbundle/add_bad_potion
execute if score @s potionbundlerng matches 2..7 run function nincodedo:uniqueitems/abilities/potionbundle/add_good_potion
execute if score @s potionbundlerng matches 8 run function nincodedo:uniqueitems/abilities/potionbundle/add_healing_potion

execute store result score potionbundlecount rhcdata run data get entity @s Inventory[{tag:{NinUnique:"PotionBundle"}}].tag.Items

execute if score potionbundlecount rhcdata matches ..7 run function nincodedo:uniqueitems/abilities/potionbundle/fill_bundle
