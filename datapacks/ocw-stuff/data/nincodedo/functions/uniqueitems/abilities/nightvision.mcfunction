execute as @p[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run tag @s add nightvision
execute as @p[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run effect give @s minecraft:night_vision 30 0 true
execute as @p[tag=nightvision] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run effect clear @s minecraft:night_vision
execute as @p[tag=nightvision] unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run tag @s remove nightvision
execute if entity @p[tag=nightvision] run schedule function nincodedo:uniqueitems/abilities/nightvision 5s append
