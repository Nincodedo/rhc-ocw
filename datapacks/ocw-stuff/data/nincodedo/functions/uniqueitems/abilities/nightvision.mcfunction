tag @s[nbt={Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] add nightvision
effect give @s[tag=nightvision] minecraft:night_vision infinite 0 true
effect clear @s[tag=nightvision,nbt=!{Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] minecraft:night_vision
tag @s[tag=nightvision,nbt=!{Inventory:[{Slot:103b,tag:{NinUnique:"UG",NinPowered:1}}]}] remove nightvision
