execute store result score @s bundle_item_count run data get entity @s SelectedItem.tag.Items
execute if score @s bundle_item_count matches ..1 run advancement revoke @s only nincodedo:items/bundle/unshift
execute if score @s bundle_item_count matches ..1 run return -1

data modify storage nincodedo:storage bundle.Items set from entity @s SelectedItem.tag.Items
data modify storage nincodedo:storage bundle.Items insert 0 from storage nincodedo:storage bundle.Items[-1]
data remove storage nincodedo:storage bundle.Items[-1]
item modify entity @s weapon.mainhand nincodedo:bundle/copy_modified_items
playsound minecraft:item.armor.equip_generic player @s

advancement revoke @s only nincodedo:items/bundle/unshift
