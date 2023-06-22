execute store result score ms_cooldown rhcdata run scoreboard players get config_ms_cooldown rhcconfig
schedule function nincodedo:uniqueitems/abilities/mastersword/cooldown 1t
tag @s add spin_attacker
summon minecraft:item_display ~ ~ ~ {Tags:["spin_attack_sword","spin_attack"],interpolation_duration:0,item_display:"none",item:{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:2020202,Enchantments:[{}]}}}
data modify entity @e[tag=spin_attack_sword,sort=nearest,limit=1] item set from entity @s SelectedItem
data merge entity @e[tag=spin_attack_sword,sort=nearest,limit=1] {transformation:{scale:[2f,2f,2f],translation:[.50f,-.50f,.50f],right_rotation:{angle:0.65f,axis:[0,1,0]}},start_interpolation:-1}
execute positioned ~ ~1 ~ summon minecraft:marker run tag @s add spin_attack_rotate
tag @e[tag=spin_attack_rotate] add spin_attack
data modify entity @e[tag=spin_attack_rotate,sort=nearest,limit=1] Rotation[0] set from entity @s Rotation[0]
scoreboard players set @e[tag=spin_attack,sort=nearest,limit=2] spin_attack_life 0
playsound nincodedo:mastersword.spin_attack player @a ~ ~ ~ 1 1
schedule function nincodedo:uniqueitems/abilities/mastersword/spin_attack_animate 1t

scoreboard players set @s used_ms 0
advancement revoke @s only nincodedo:unique_items/master_sword/spin_attack
