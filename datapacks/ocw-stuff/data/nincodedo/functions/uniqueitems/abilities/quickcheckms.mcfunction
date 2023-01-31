execute as @a[nbt={Health:20.0f,SelectedItem:{tag:{NinUnique:"MS"}}},scores={used_ms=1..}] at @s run function nincodedo:uniqueitems/abilities/shoot
# entity is tagged, does not have the sword at all, remove the tag
execute as @a[tag=HasMasterSword] unless entity @s[nbt={Inventory:[{tag:{NinUnique:"MS"}}]}] run tag @s remove HasMasterSword
# entity is tagged, does not have sword in main hand, but it is still in the inventory, run slow checks
execute as @a[tag=HasMasterSword] unless entity @s[nbt={SelectedItem:{tag:{NinUnique:"MS"}}}] if entity @s[nbt={Inventory:[{tag:{NinUnique:"MS"}}]}] run schedule function nincodedo:uniqueitems/abilities/slowcheckms 10t
# entity is tagged, has the sword in hand, switch to quick checks
execute as @a[tag=HasMasterSword] if entity @s[nbt={SelectedItem:{tag:{NinUnique:"MS"}}}] run schedule function nincodedo:uniqueitems/abilities/quickcheckms 1t replace
