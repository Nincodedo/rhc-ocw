execute if entity @s[tag=ascend_good] if score @s ascend_start_y > ascend_height_limit rhcconfig run tellraw @a[tag=debug_logging] {"text": "change to bad, over height limit"}
execute if entity @s[tag=ascend_good,tag=moving] run tellraw @a[tag=debug_logging] {"text": "change to bad, moving"}
data merge entity @s[tag=moving] {Glowing:1b,brightness:{sky:15,block:15},block_state:{Name:"minecraft:red_wool"},Tags:["ascend","ascend_bad","moving"],glow_color_override:10495774}
data merge entity @s[tag=!moving] {Glowing:1b,brightness:{sky:15,block:15},block_state:{Name:"minecraft:red_wool"},Tags:["ascend","ascend_bad"],glow_color_override:10495774}
execute at @s run playsound nincodedo:item.ascend.find_location_bad player @a ~ ~ ~ 1 1 1
