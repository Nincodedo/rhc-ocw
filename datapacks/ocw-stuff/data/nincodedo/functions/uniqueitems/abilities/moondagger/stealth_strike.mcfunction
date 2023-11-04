execute unless entity @e[type=#nincodedo:enemy_mobs,distance=..3] run tellraw @a[tag=debug_logging] {"text": "[Debug] no nearby mob, canceled stealth strike"}
execute unless entity @e[type=#nincodedo:enemy_mobs,distance=..3] run function nincodedo:uniqueitems/abilities/moondagger/no_stealth_strike
execute unless entity @e[type=#nincodedo:enemy_mobs,distance=..3] run return 0

execute unless score config_debug rhcconfig matches 1 if score @s moon_dagger_stealth_strike_cooldown matches 1.. run tellraw @a[tag=debug_logging] {"text": "[Debug] On cooldown, not attacking"}
execute unless score config_debug rhcconfig matches 1 if score @s moon_dagger_stealth_strike_cooldown matches 1.. run function nincodedo:uniqueitems/abilities/moondagger/no_stealth_strike
execute unless score config_debug rhcconfig matches 1 if score @s moon_dagger_stealth_strike_cooldown matches 1.. run return 0

tellraw @a[tag=debug_logging] {"text": "[Debug] Attacking with stealth strike"}

tag @e[type=#nincodedo:enemy_mobs,sort=nearest,distance=..3] add stealth_strike_victim
tag @e[type=#nincodedo:enemy_mobs,sort=nearest,distance=..3] add stealth_strike_counter

execute at @e[tag=stealth_strike_victim,sort=nearest,distance=..3] run summon minecraft:text_display ~ ~2.3 ~ {text:'{"text":"?"}',billboard:"center",Tags:["stealth_strike_effect","stealth_strike_counter"]}
execute as @e[tag=stealth_strike_victim,sort=nearest,distance=..3] run data modify entity @s NoAI set value true

particle minecraft:cloud ~ ~1 ~ .125 .5 .125 .05 25
playsound nincodedo:item.stealthstrike.teleport player @a[distance=..16] ~ ~ ~ 0.7
execute positioned as @e[tag=stealth_strike_victim,sort=nearest,limit=1] rotated as @e[tag=stealth_strike_victim,sort=nearest,limit=1] positioned ^ ^ ^-1.7 facing entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] feet run summon minecraft:marker ~ ~ ~ {Tags:["stealth_strike_tele","stealth_strike_tele1"]}
execute positioned as @e[tag=stealth_strike_victim,sort=nearest,limit=1] rotated as @e[tag=stealth_strike_victim,sort=nearest,limit=1] positioned ^ ^ ^-1.7 positioned over motion_blocking_no_leaves facing entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] feet run summon minecraft:marker ~ ~ ~ {Tags:["stealth_strike_tele","stealth_strike_tele2"]}
execute as @e[tag=stealth_strike_tele] run data modify entity @s Rotation set from entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] Rotation

execute as @e[tag=stealth_strike_tele2,sort=nearest,limit=1] at @s unless entity @e[tag=stealth_strike_victim,sort=nearest,limit=1,distance=..2] run kill @s

execute at @e[tag=stealth_strike_tele1,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:replaceable if block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~ ~ ~ ~
execute at @e[tag=stealth_strike_tele1,sort=nearest,limit=1] unless block ~ ~ ~ #minecraft:replaceable at @e[tag=stealth_strike_tele2,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:replaceable if block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~ ~ ~ ~
execute at @e[tag=stealth_strike_tele1,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ #minecraft:replaceable at @e[tag=stealth_strike_tele2,sort=nearest,limit=1] if block ~ ~ ~ #minecraft:replaceable if block ~ ~ ~ #minecraft:replaceable run tp @s ~ ~ ~ ~ ~

kill @e[tag=stealth_strike_tele,sort=nearest,limit=2]

execute store result score @e[tag=stealth_strike_counter] moon_dagger_effect run scoreboard players get moon_dagger_stun_time_ticks rhcconfig
execute store result score @s moon_dagger_stealth_strike_cooldown run scoreboard players get moon_dagger_cooldown_time_ticks rhcconfig

tag @s add next_attack_stealth_strike

function nincodedo:uniqueitems/abilities/moondagger/setup_cooldown_bar
schedule function nincodedo:uniqueitems/abilities/moondagger/watch_effect_counter 1t
schedule function nincodedo:uniqueitems/abilities/moondagger/watch_cooldown 1t

scoreboard players set @s used_moon_dagger 0
advancement revoke @s only nincodedo:unique_items/moon_dagger/use_stealth_strike
