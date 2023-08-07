execute if predicate nincodedo:feature_locations/dungeon_spawner run data modify storage nincodedo:storage banners.orange.id set string block ~ ~-1 ~ SpawnData.entity.id 10

execute store result score bannerplz rhcdata run loot give @s loot nincodedo:triggers/banners

scoreboard players operation @s bannerplz += bannerplz rhcdata

execute unless score @s bannerplz matches 1 run schedule function nincodedo:triggers/resetbannertrigger 120s append
execute unless score @s bannerplz matches 1 run tellraw @s {"text":"Banner found for your location! 2 minute command cooldown started.","color":"aqua"}
execute if score @s bannerplz matches 1 run tellraw @s {"text":"Did not find a known location. Try moving closer to the \"center\" of the structure you're in or stand on top of a unique block in the area. Example, stand on top of the spawner in a dungeon.","color":"red"}
execute if score @s bannerplz matches 1 run scoreboard players enable @s bannerplz
execute if score @s bannerplz matches 1 run scoreboard players set @s bannerplz 0
