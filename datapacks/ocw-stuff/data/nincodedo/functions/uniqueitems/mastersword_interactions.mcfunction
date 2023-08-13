execute if score mastersword rhcdata matches 1 as @e[type=minecraft:item,predicate=nincodedo:is/entity/item/floating_master_sword] run kill @s
execute if score mastersword rhcdata matches 0 as @e[type=minecraft:item,predicate=nincodedo:is/entity/item/floating_master_sword] positioned as @s at @s run title @p[distance=..3,predicate=!nincodedo:isentitymetallink,tag=!seenworthymessage] actionbar {"text":"Only a worthy hero may claim the sword"}
execute if score mastersword rhcdata matches 0 as @e[type=minecraft:item,predicate=nincodedo:is/entity/item/floating_master_sword] positioned as @s at @s run tag @p[distance=..3,predicate=!nincodedo:isentitymetallink] add seenworthymessage

execute as @e[type=minecraft:item,predicate=nincodedo:is/entity/item/floating_master_sword] at @s run advancement revoke @a[predicate=!nincodedo:feature_locations/metal_link_house] only nincodedo:unique_items/track_metal_link_house
execute as @e[type=minecraft:item,predicate=nincodedo:is/entity/item/floating_master_sword] at @s run tag @a[predicate=!nincodedo:feature_locations/metal_link_house] remove seenworthymessage
execute as @e[type=minecraft:item,predicate=nincodedo:is/entity/item/floating_master_sword] at @s if entity @a[predicate=nincodedo:feature_locations/metal_link_house] run schedule function nincodedo:uniqueitems/mastersword_interactions 2s replace
