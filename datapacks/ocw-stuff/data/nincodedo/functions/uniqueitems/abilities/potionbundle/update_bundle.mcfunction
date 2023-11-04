data remove storage nincodedo:potions Items
data modify storage nincodedo:potions Items set from entity @s[predicate=nincodedo:is/entity/equipment/offhand/potion_bundle] Inventory[{Slot:-106b,tag:{NinUnique:"PotionBundle"}}].tag.Items
item modify entity @s[predicate=nincodedo:is/entity/equipment/offhand/potion_bundle] weapon.offhand nincodedo:update_potion_bundle
