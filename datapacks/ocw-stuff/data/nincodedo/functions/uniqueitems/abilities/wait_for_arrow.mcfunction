execute as @e[tag=torcharrow] at @s run tag @e[distance=0..4,type=!minecraft:arrow] add torcharrowtarget
execute as @e[tag=torcharrow,predicate=nincodedo:is/entity/in_block] at @s run function nincodedo:uniqueitems/abilities/place_torch
execute as @e[tag=torcharrowtarget,predicate=nincodedo:is/entity/hurt_recently] run function nincodedo:uniqueitems/abilities/give_glow_effect
execute unless entity @e[tag=torcharrow] run tag @e[tag=torcharrowtarget] remove torcharrowtarget
execute as @e[tag=torcharrow] at @s run particle dust 1.000 1.000 0.000 1 ~ ~ ~ 0.125 0.125 0.125 0.1 10 normal
execute if entity @e[tag=torcharrow] run schedule function nincodedo:uniqueitems/abilities/wait_for_arrow 1t
