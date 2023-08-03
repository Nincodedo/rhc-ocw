execute if entity @s[predicate=nincodedo:isentityundeadzeratul,predicate=!nincodedo:is/entity/inventory/have_nightvision] run function nincodedo:uniqueitems/abilities/nightvision/update_armor
execute if score config_debug rhcconfig matches 1 if entity @s[predicate=!nincodedo:is/entity/inventory/have_nightvision] run function nincodedo:uniqueitems/abilities/nightvision/update_armor
execute if entity @s[predicate=nincodedo:isentityundeadzeratul] run scoreboard players enable @s nightvision_helmet_fix
execute if score config_debug rhcconfig matches 1 run scoreboard players enable @s nightvision_helmet_fix
scoreboard players reset @s nightvision_helmet_fix
