execute as @a[predicate=nincodedo:isentityundeadzeratul,nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run tag @s add nightvision
execute as @a[predicate=nincodedo:isentityundeadzeratul,nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run effect give @s minecraft:night_vision 6
execute as @a[tag=nightvision] run execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run tag @s remove nightvision
execute as @a[tag=nightvision] run execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run effect clear @s minecraft:night_vision
execute if entity @a[tag=nightvision] run schedule function nincodedo:uniqueitems/abilities/nightvision 5s append
