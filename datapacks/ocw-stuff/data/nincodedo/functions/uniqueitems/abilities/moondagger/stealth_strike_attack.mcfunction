execute unless entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] run tellraw @a[tag=debug_logging] {"text": "[Debug] Stealth strike victim not found (already dead?)"}
execute unless entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] run advancement revoke @s only nincodedo:unique_items/moon_dagger/stealth_strike_attack
execute unless entity @e[tag=stealth_strike_victim,sort=nearest,limit=1] run return 0

tellraw @a[tag=debug_logging] [{"text": "[Debug] Attacking "},{"selector":"@e[tag=stealth_strike_victim,sort=nearest,limit=1]"},{"text": " for extra damage"}]

execute at @e[tag=stealth_strike_victim,sort=nearest,limit=1] run playsound nincodedo:item.stealthstrikeattack.big_hit player @a[distance=..16] ~ ~ ~ 0.7
execute store success score stealth_strike_damage debug_success run damage @e[tag=stealth_strike_victim,sort=nearest,limit=1] 8 nincodedo:moon_dagger_stealth_strike by @p[tag=next_attack_stealth_strike]

tag @s remove next_attack_stealth_strike
advancement revoke @s only nincodedo:unique_items/moon_dagger/stealth_strike_attack
