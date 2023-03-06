execute as @e[tag=torcharrow,nbt={inBlockState:{}}] at @s run function nincodedo:uniqueitems/abilities/place_torch
execute if entity @e[tag=torcharrow] run schedule function nincodedo:uniqueitems/abilities/wait_for_arrow 1t
