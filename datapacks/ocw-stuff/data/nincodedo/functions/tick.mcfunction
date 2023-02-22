execute as @a[scores={bannerplz=1}] run function nincodedo:triggers/givebannerforlocation
execute as @a[tag=!triggerbannerenabled] run scoreboard players enable @s bannerplz
execute as @a[tag=!triggerbannerenabled] run tag @s add triggerbannerenabled
execute as @e[tag=projectiles] positioned as @s run particle dust 0.231 0.973 1.000 1 ~ ~ ~ 0.125 0.125 0.125 .1 10 normal
