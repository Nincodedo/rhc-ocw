execute as @a[scores={bannerplz=1}] run function nincodedo:triggers/givebannerforlocation
execute as @a[tag=!triggerbannerenabled] run scoreboard players enable @s bannerplz
execute as @a[tag=!triggerbannerenabled] run loot give @s loot nincodedo:docs/faq_book
execute as @a[tag=!triggerbannerenabled] run tag @s add triggerbannerenabled
execute as @e[tag=projectiles] positioned as @s run particle dust 0.231 0.973 1.000 1 ~ ~ ~ 0.125 0.125 0.125 0.1 10 normal
execute as @e[tag=torcharrow] positioned as @s run particle dust 1.000 1.000 0.000 1 ~ ~ ~ 0.125 0.125 0.125 0.1 10 normal
