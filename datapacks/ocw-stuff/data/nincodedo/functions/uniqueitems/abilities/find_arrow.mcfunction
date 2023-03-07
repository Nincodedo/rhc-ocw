execute as @p[nbt={Inventory:[{tag:{NinUnique:"TT",NinPowered:1}}]}] store success score torchcheck rhcdata run clear @s minecraft:torch 1

execute if score torchcheck rhcdata matches 1 run data modify entity @e[type=minecraft:arrow,sort=nearest,limit=1] Tags set value ["torcharrow"]

scoreboard players set @s arrowshot 0
advancement revoke @s only nincodedo:unique_items/hold_torch_bow
execute if score torchcheck rhcdata matches 1 unless entity @e[tag=torcharrow,sort=nearest,limit=1] run schedule function nincodedo:uniqueitems/abilities/find_arrow_delayed 1t
execute if score torchcheck rhcdata matches 1 if entity @e[tag=torcharrow,sort=nearest,limit=1] run schedule function nincodedo:uniqueitems/abilities/wait_for_arrow 1t
