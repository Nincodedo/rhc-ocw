execute store result score ms_cooldown rhcdata run scoreboard players get config_ms_cooldown rhcconfig
schedule function nincodedo:uniqueitems/abilities/mastersword/cooldown 1t
summon marker ~ ~ ~ {Tags:["direction"]}
execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function nincodedo:uniqueitems/abilities/get_motion
execute anchored eyes run summon arrow ^ ^ ^1 {Tags:["projectile", "projectiles"], NoGravity:1, life:1000, pickup:0b, damage:4d, SoundEvent:"block.enchantment_table.use"}
data modify entity @e[tag=projectile,sort=nearest,limit=1] Motion set from storage nincodedo:storage Motion
data modify entity @e[tag=projectile,sort=nearest,limit=1] Owner set from entity @s UUID
tag @s add ms_beam_safe

playsound nincodedo:mastersword.beam player @a ~ ~ ~ 0.7

schedule function nincodedo:uniqueitems/abilities/mastersword/wait_for_arrow 1t

scoreboard players set @s used_ms 0
advancement revoke @s only nincodedo:unique_items/master_sword/shoot
