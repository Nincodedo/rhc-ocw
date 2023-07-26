tellraw @a[tag=debug_logging] {"text": "[Debug] beeg attack"}

execute at @e[tag=stealth_strike_victim,sort=nearest,limit=1] run playsound nincodedo:item.stealthstrikeattack.big_hit player @a[distance=..16] ~ ~ ~ 0.7
damage @e[tag=stealth_strike_victim,sort=nearest,limit=1] 8 nincodedo:moon_dagger_stealth_strike by @p[tag=next_attack_stealth_strike]

tag @s remove next_attack_stealth_strike
advancement revoke @s only nincodedo:unique_items/moon_dagger/stealth_strike_attack
