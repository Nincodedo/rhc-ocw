execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^1 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^2 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^3 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 1
execute as @a[tag=holdbonemeal] at @s anchored eyes unless block ^ ^ ^1 #minecraft:small_flowers unless block ^ ^ ^2 #minecraft:small_flowers unless block ^ ^ ^3 #minecraft:small_flowers run scoreboard players set @s lookingatsmallflower 0

execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^1 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^2 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 1
execute as @a[tag=holdbonemeal] at @s anchored eyes if block ^ ^ ^3 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 1
execute as @a[tag=holdbonemeal] at @s anchored eyes unless block ^ ^ ^1 minecraft:sugar_cane unless block ^ ^ ^2 minecraft:sugar_cane unless block ^ ^ ^3 minecraft:sugar_cane run scoreboard players set @s lookingatsugarcane 0
