scoreboard players set one math 1
scoreboard players set @s rngmin 0
execute store result score @s rngmax run data get storage nincodedo:potions badpotions
scoreboard players operation @s rngmax -= one math
execute store result score @s potionbundlerng2 run loot spawn ~ ~ ~ loot nincodedo:rng/score

item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}]}] weapon.offhand nincodedo:potionbundle/addbadpotion

tellraw @a[tag=debug_logging] [{"text":"[Debug] Potion Bundle RNG: Add bad"}]
