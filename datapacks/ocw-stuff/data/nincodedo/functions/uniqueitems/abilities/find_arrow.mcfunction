execute if predicate nincodedo:is/entity/holding/infinity_torch_bow run scoreboard players set torchcheck rhcdata 1
execute unless predicate nincodedo:is/entity/holding/infinity_torch_bow store success score torchcheck rhcdata run clear @s minecraft:torch 1

execute if score torchcheck rhcdata matches 1 run data modify entity @e[type=minecraft:arrow,sort=nearest,limit=1] Tags set value ["torcharrow"]

scoreboard players set @s arrowshot 0
advancement revoke @s only nincodedo:unique_items/shoot_torch_bow
execute if score torchcheck rhcdata matches 1 if entity @e[tag=torcharrow,sort=nearest,limit=1] run schedule function nincodedo:uniqueitems/abilities/wait_for_arrow 1t
