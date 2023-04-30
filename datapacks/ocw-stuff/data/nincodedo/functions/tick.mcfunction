execute as @a[scores={bannerplz=1}] run function nincodedo:triggers/givebannerforlocation
execute as @a[scores={nopotionsplz=1}] run function nincodedo:triggers/nopotionsplz
execute as @a[tag=!triggerbannerenabled] run scoreboard players enable @s bannerplz
execute as @a[tag=!triggerbannerenabled] run loot give @s loot nincodedo:docs/faq_book
execute as @a[tag=!triggerbannerenabled] run tag @s add triggerbannerenabled
execute if score potionhorn rhcdata matches 1 as @a[tag=!triggernopotionenabled] run scoreboard players enable @s nopotionsplz
execute if score potionhorn rhcdata matches 1 as @a[tag=!triggernopotionenabled] run tag @s add triggernopotionenabled
