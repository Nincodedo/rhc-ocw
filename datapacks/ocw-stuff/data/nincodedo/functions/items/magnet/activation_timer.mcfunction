scoreboard players add @a[tag=active_magnet] magnet_active_time 1
execute as @a[tag=active_magnet] at @s if score @s magnet_active_time > config_magnet_active_time rhcdata run function nincodedo:items/magnet/deactivate_magnet
execute as @a[tag=active_magnet,scores={magnet_item_count=0}] at @s run function nincodedo:items/magnet/deactivate_magnet
execute if entity @a[tag=active_magnet] run schedule function nincodedo:items/magnet/activation_timer 1t
