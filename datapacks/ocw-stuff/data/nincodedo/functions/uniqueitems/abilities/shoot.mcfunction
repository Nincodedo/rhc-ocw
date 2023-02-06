summon marker ~ ~ ~ {Tags:["direction"]}
execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function nincodedo:uniqueitems/abilities/get_motion
execute anchored eyes run summon snowball ^ ^ ^1 {Tags:["projectile"], NoGravity:1, Fire:-1s}
data modify entity @e[tag=projectile,limit=1] Motion set from storage nincodedo:storage Motion
data modify entity @e[tag=projectile,limit=1] Owner set from entity @s UUID

playsound nincodedo:nincodedo.mastersword.beam player @s ~ ~ ~ 0.7

schedule function nincodedo:uniqueitems/abilities/gravity 4t replace

scoreboard players set @s used_ms 0
advancement revoke @s only nincodedo:unique_items/master_sword_shoot
