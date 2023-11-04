tag @s[predicate=nincodedo:is/entity/wearing/night_vision_powered] add nightvision
effect give @s[tag=nightvision] minecraft:night_vision infinite 0 true
effect clear @s[tag=nightvision,predicate=!nincodedo:is/entity/wearing/night_vision_powered] minecraft:night_vision
tag @s[tag=nightvision,predicate=!nincodedo:is/entity/wearing/night_vision_powered] remove nightvision
