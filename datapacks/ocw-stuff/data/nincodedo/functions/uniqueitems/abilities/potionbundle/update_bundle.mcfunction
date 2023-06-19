data remove storage nincodedo:potions Items
data modify storage nincodedo:potions Items set from entity @s[nbt={Inventory:[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}]}] Inventory[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}].tag.Items
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}]}] weapon.offhand nincodedo:update_potion_bundle
