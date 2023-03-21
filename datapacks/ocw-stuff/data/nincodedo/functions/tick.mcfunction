execute as @a[scores={bannerplz=1}] run function nincodedo:triggers/givebannerforlocation
execute as @a[tag=!triggerbannerenabled] run scoreboard players enable @s bannerplz
execute as @a[tag=!triggerbannerenabled] run loot give @s loot nincodedo:docs/faq_book
execute as @a[tag=!triggerbannerenabled] run tag @s add triggerbannerenabled
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^1 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^2 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^3 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 1
execute as @a[tag=holdbonemeal] at @s anchored eyes unless block ^ ^ ^1 #minecraft:small_flowers unless block ^ ^ ^2 #minecraft:small_flowers unless block ^ ^ ^3 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 0

execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^1 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^2 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^3 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 1
execute as @a[tag=holdbonemeal] at @s anchored eyes unless block ^ ^ ^1 minecraft:sugar_cane unless block ^ ^ ^2 minecraft:sugar_cane unless block ^ ^ ^3 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 0
