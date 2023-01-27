execute if entity @a[predicate=nincodedo:isentityundeadzeratul,nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] as @s run tag @s add nightvision
execute if entity @a[predicate=nincodedo:isentityundeadzeratul,nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] as @s run effect give @s minecraft:night_vision 60
execute if entity @a[tag=nightvision] as @s run execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run tag @s remove nightvision
execute if entity @a[tag=nightvision] as @s run execute unless entity @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] run effect clear @s minecraft:night_vision
execute if entity @a[tag=nightvision] run schedule function nincodedo:uniqueitems/abilities/nightvision 5s append
