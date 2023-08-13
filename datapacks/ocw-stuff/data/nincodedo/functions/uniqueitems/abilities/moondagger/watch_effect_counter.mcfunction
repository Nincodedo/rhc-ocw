scoreboard players remove @e[tag=stealth_strike_counter] moon_dagger_effect 1

execute as @e[tag=stealth_strike_counter] if score @s moon_dagger_effect matches ..0 run kill @s[type=minecraft:text_display]
execute as @e[tag=stealth_strike_counter] if score @s moon_dagger_effect matches ..0 run data modify entity @s[type=!minecraft:text_display,tag=!debug_enemy] NoAI set value false
execute as @e[tag=stealth_strike_counter] if score @s moon_dagger_effect matches ..0 run tag @s[type=!minecraft:text_display] remove stealth_strike_counter

execute if entity @e[tag=stealth_strike_counter] run schedule function nincodedo:uniqueitems/abilities/moondagger/watch_effect_counter 1t
