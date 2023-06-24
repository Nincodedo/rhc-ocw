execute as @a[scores={bannerplz=1}] run function nincodedo:triggers/givebannerforlocation
execute as @a[scores={nopotionsplz=1}] run function nincodedo:triggers/nopotionsplz
execute as @a[tag=!triggerbannerenabled] run scoreboard players enable @s bannerplz
execute as @a[tag=!triggerbannerenabled] run loot give @s loot nincodedo:docs/faq_book
execute as @a[tag=!triggerbannerenabled] run tag @s add triggerbannerenabled
execute if score potionhorn rhcdata matches 1 as @a[tag=!triggernopotionenabled] run scoreboard players enable @s nopotionsplz
execute if score potionhorn rhcdata matches 1 as @a[tag=!triggernopotionenabled] run tag @s add triggernopotionenabled
scoreboard players enable @a[advancements={nincodedo:unique_items/ascend/main=true},tag=!triggerascendemr] ascend_emergency_fix
tag @a[advancements={nincodedo:unique_items/ascend/main=true},tag=!triggerascendemr] add triggerascendemr
execute as @a[scores={ascend_emergency_fix=1}] at @s run function nincodedo:triggers/ascend_emergency_fix
