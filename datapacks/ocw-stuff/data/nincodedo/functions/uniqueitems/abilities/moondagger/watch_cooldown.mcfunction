execute as @a[scores={moon_dagger_stealth_strike_cooldown=1..}] run execute store result bossbar nincodedo:stealth_strike_cooldown value run scoreboard players operation @s moon_dagger_stealth_strike_cooldown -= one math
execute as @a[scores={moon_dagger_stealth_strike_cooldown=..0}] run bossbar remove nincodedo:stealth_strike_cooldown

execute if entity @a[scores={moon_dagger_stealth_strike_cooldown=1..}] run schedule function nincodedo:uniqueitems/abilities/moondagger/watch_cooldown 1t
