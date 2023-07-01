execute if entity @s[tag=ascend_good] if score @s ascend_start_y > ascend_height_limit rhcconfig run tellraw @a[tag=debug_logging] {"text": "[Debug] change to bad, over height limit"}
execute if entity @s[tag=ascend_good,tag=moving] run tellraw @a[tag=debug_logging] {"text": "[Debug] change to bad, moving"}
data merge entity @s[tag=moving] {Glowing:1b,brightness:{sky:15,block:15},block_state:{Name:"minecraft:red_wool"},Tags:["ascend","ascend_bad","moving"],glow_color_override:10495774,transformation:{translation:[-0.5f,0.0f,-0.5f]}}
data merge entity @s[tag=!moving] {Glowing:1b,brightness:{sky:15,block:15},block_state:{Name:"minecraft:red_wool"},Tags:["ascend","ascend_bad"],glow_color_override:10495774,transformation:{translation:[-0.5f,0.0f,-0.5f]}}
execute if dimension minecraft:the_nether if score @e[tag=find_pop_out_y,sort=nearest,limit=1] ascend_y matches 125.. run tag @s add bad_dimension
execute at @s run playsound nincodedo:item.ascend.find_location_bad player @a ~ ~ ~ 1 1
