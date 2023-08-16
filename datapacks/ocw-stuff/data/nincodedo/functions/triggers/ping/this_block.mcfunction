tag @s remove raycasting
execute align xyz run summon minecraft:block_display ~ ~ ~ {Glowing:true,block_state:{Name:"minecraft:light_gray_stained_glass"},Tags:["block_ping","ping"]}
data modify entity @e[tag=ping,sort=nearest,limit=1] transformation.scale set value [0.98f,0.98f,0.98f]
execute as @e[tag=ping,sort=nearest,limit=1] at @s run tp ~0.01 ~0.01 ~0.01
playsound minecraft:entity.player.levelup player @a ~ ~ ~ 1 2
execute as @e[tag=ping,sort=nearest,limit=1] store result score @s ping_lifetime run scoreboard players get config_ping_ping_lifetime rhcconfig
schedule function nincodedo:triggers/ping/lifetime_watch 1t
