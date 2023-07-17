summon marker ~ ~ ~ {Tags:["direction"]}
execute as @e[tag=direction,limit=1] positioned 0.0 0.0 0.0 run function nincodedo:uniqueitems/abilities/get_motion

# Red
execute anchored eyes run summon firework_rocket ^5 ^2 ^-2 {Tags:["bahprojectile"], NoGravity:1,Life:0,LifeTime:40,ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;16711680]},{Type:0,Colors:[I;16711680]}]}}},Passengers:[{id:"minecraft:sheep",Age:-3000,DeathLootTable:"",Invulnerable:1b,Tags:["sheepprojectile"],Color:14b}]}

# Orange
execute anchored eyes run summon firework_rocket ^3 ^2 ^-1.5 {Tags:["bahprojectile"], NoGravity:1,Life:0,LifeTime:40,ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16749059]},{Type:0,Colors:[I;16749059]},{Type:0,Colors:[I;16749059]},{Type:0,Colors:[I;16749059]}]}}},Passengers:[{id:"minecraft:sheep",Age:-3000,DeathLootTable:"",Invulnerable:1b,Tags:["sheepprojectile"],Color:1b}]}

# Yellow
execute anchored eyes run summon firework_rocket ^1 ^2 ^-1 {Tags:["bahprojectile"], NoGravity:1,Life:0,LifeTime:40,ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16776960]},{Type:0,Colors:[I;16776960]},{Type:0,Colors:[I;16776960]},{Type:0,Colors:[I;16776960]}]}}},Passengers:[{id:"minecraft:sheep",Age:-3000,DeathLootTable:"",Invulnerable:1b,Tags:["sheepprojectile"],Color:4b}]}

# Green
execute anchored eyes run summon firework_rocket ^-1 ^2 ^-1 {Tags:["bahprojectile"], NoGravity:1,Life:0,LifeTime:40,ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;65280]},{Type:0,Colors:[I;65280]},{Type:0,Colors:[I;65280]},{Type:0,Colors:[I;65280]}]}}},Passengers:[{id:"minecraft:sheep",Age:-3000,DeathLootTable:"",Invulnerable:1b,Tags:["sheepprojectile"],Color:13b}]}

# Blue
execute anchored eyes run summon firework_rocket ^-3 ^2 ^-1.5 {Tags:["bahprojectile"], NoGravity:1,Life:0,LifeTime:40,ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;255]},{Type:0,Colors:[I;255]},{Type:0,Colors:[I;255]},{Type:0,Colors:[I;255]}]}}},Passengers:[{id:"minecraft:sheep",Age:-3000,DeathLootTable:"",Invulnerable:1b,Tags:["sheepprojectile"],Color:11b}]}

# Purple
execute anchored eyes run summon firework_rocket ^-5 ^2 ^-2 {Tags:["bahprojectile"], NoGravity:1,Life:0,LifeTime:40,ShotAtAngle:1b,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;9699539]},{Type:0,Colors:[I;9699539]},{Type:0,Colors:[I;9699539]},{Type:0,Colors:[I;9699539]}]}}},Passengers:[{id:"minecraft:sheep",Age:-3000,DeathLootTable:"",Invulnerable:1b,Tags:["sheepprojectile"],Color:10b}]}

execute as @e[tag=sheepprojectile] at @s run playsound minecraft:entity.sheep.ambient neutral @a
execute as @e[tag=bahprojectile] run data modify entity @s Motion set from storage nincodedo:storage Motion
data modify storage nincodedo:storage UUID set from entity @s UUID
execute as @e[tag=bahprojectile] run data modify entity @s Owner set from storage nincodedo:storage UUID

schedule function nincodedo:uniqueitems/abilities/sheep_gravity 4t replace

scoreboard players set @s used_th 0
advancement revoke @s only nincodedo:unique_items/sheep_shoot
schedule function nincodedo:uniqueitems/abilities/move_projectile_sheep_to_a_nice_farm 1t replace
schedule function nincodedo:uniqueitems/abilities/poof_sheep 40t
