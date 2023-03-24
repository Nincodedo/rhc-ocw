execute at @s if predicate nincodedo:feature_locations/village run give @s minecraft:yellow_banner

execute at @s if predicate nincodedo:feature_locations/ruined_portal run give @s minecraft:magenta_banner

execute at @s if predicate nincodedo:feature_locations/stronghold run give @s minecraft:green_banner

execute at @s if predicate nincodedo:feature_locations/dungeon_spawner run give @s minecraft:orange_banner

execute at @s if predicate nincodedo:feature_locations/amethyst_geode run give @s minecraft:purple_banner

execute at @s if predicate nincodedo:feature_locations/desert_pyramid run give @s minecraft:cyan_banner

execute at @s if predicate nincodedo:feature_locations/mansion run give @s minecraft:brown_banner

execute at @s if predicate nincodedo:feature_locations/any_known_structure run scoreboard players add @s bannerplz 1

execute unless score @s bannerplz matches 1 run schedule function nincodedo:triggers/resetbannertrigger 120s replace
execute unless score @s bannerplz matches 1 run tellraw @s {"text":"Banner found for your location! 2 minute command cooldown started.","color":"aqua"}
execute if score @s bannerplz matches 1 run tellraw @s {"text":"Did not find a known location. Try moving closer to the \"center\" of the structure you're in or stand on top of a unique block in the area. Example, stand on top of the spawner in a dungeon.","color":"red"}
execute if score @s bannerplz matches 1 run scoreboard players enable @s bannerplz
execute if score @s bannerplz matches 1 run scoreboard players set @s bannerplz 0
