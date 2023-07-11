execute unless entity @e[type=#nincodedo:enemy_mobs,distance=..3] run tellraw @a[tag=debug_logging] {"text": "[Debug] no nearby mob, canceled stealth strike"}
execute unless entity @e[type=#nincodedo:enemy_mobs,distance=..3] run function nincodedo:uniqueitems/abilities/moondagger/no_stealth_strike
execute unless entity @e[type=#nincodedo:enemy_mobs,distance=..3] run return -1

tellraw @a[tag=debug_logging] {"text": "[Debug] Attacking with stealth strike"}

tag @e[type=#nincodedo:enemy_mobs,sort=nearest,limit=1] add stealth_strike_victim
tag @e[type=#nincodedo:enemy_mobs,sort=nearest,limit=1] add stealth_strike_counter

execute at @e[tag=stealth_strike_victim,sort=nearest,limit=1] run summon minecraft:text_display ~ ~2.3 ~ {text:'{"text":"?"}',billboard:"center",Tags:["stealth_strike_effect","stealth_strike_counter"]}
data modify entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] NoAI set value true

particle minecraft:cloud ~ ~1 ~ .125 .25 .125 .1 25
playsound nincodedo:item.stealthstrike.teleport player @a[distance=..16] ~ ~ ~ 0.7
execute positioned as @e[tag=stealth_strike_victim,sort=nearest,limit=1] rotated as @e[tag=stealth_strike_victim,sort=nearest,limit=1] positioned ^ ^ ^-1.7 if block ~ ~ ~ minecraft:air if block ~ ~1 ~ minecraft:air facing entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

execute store result score @e[tag=stealth_strike_counter] moon_dagger_effect run scoreboard players get moon_dagger_stun_time_ticks rhcconfig
execute store result score @s moon_dagger_stealth_strike_cooldown run scoreboard players get moon_dagger_cooldown_time_ticks rhcconfig

function nincodedo:uniqueitems/abilities/moondagger/setup_cooldown_bar
schedule function nincodedo:uniqueitems/abilities/moondagger/watch_effect_counter 1t
schedule function nincodedo:uniqueitems/abilities/moondagger/watch_cooldown 1t

scoreboard players set @s used_moon_dagger 0
advancement revoke @s only nincodedo:unique_items/moon_dagger/use_stealth_strike
