execute if score @s ping_color matches 1..16 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] Glowing set value true

execute if score @s ping_color matches 1 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:white_stained_glass"
execute if score @s ping_color matches 2 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:light_gray_stained_glass"
execute if score @s ping_color matches 3 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:gray_stained_glass"
execute if score @s ping_color matches 4 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:black_stained_glass"
execute if score @s ping_color matches 5 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:brown_stained_glass"
execute if score @s ping_color matches 6 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:red_stained_glass"
execute if score @s ping_color matches 7 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:orange_stained_glass"
execute if score @s ping_color matches 8 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:yellow_stained_glass"
execute if score @s ping_color matches 9 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:lime_stained_glass"
execute if score @s ping_color matches 10 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:green_stained_glass"
execute if score @s ping_color matches 11 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:cyan_stained_glass"
execute if score @s ping_color matches 12 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:light_blue_stained_glass"
execute if score @s ping_color matches 13 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:blue_stained_glass"
execute if score @s ping_color matches 14 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:purple_stained_glass"
execute if score @s ping_color matches 15 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:magenta_stained_glass"
execute if score @s ping_color matches 16 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] block_state.Name set value "minecraft:pink_stained_glass"

execute if score @s ping_color matches 1 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 16777215
execute if score @s ping_color matches 2 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 13882323
execute if score @s ping_color matches 3 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 8421504
execute if score @s ping_color matches 4 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 1315860
execute if score @s ping_color matches 5 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 9127187
execute if score @s ping_color matches 6 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 16711680
execute if score @s ping_color matches 7 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 16753920
execute if score @s ping_color matches 8 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 16776960
execute if score @s ping_color matches 9 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 12582656
execute if score @s ping_color matches 10 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 65280
execute if score @s ping_color matches 11 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 65535
execute if score @s ping_color matches 12 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 11393254
execute if score @s ping_color matches 13 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 255
execute if score @s ping_color matches 14 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 8388736
execute if score @s ping_color matches 15 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 16711935
execute if score @s ping_color matches 16 run data modify entity @e[tag=block_ping,sort=nearest,limit=1] glow_color_override set value 16761035