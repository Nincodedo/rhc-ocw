scoreboard players set @s nightvision_armor_total 0
scoreboard players set @s nightvision_armor_changed 0

scoreboard players add @s[predicate=nincodedo:is/entity/wearing/leather/chestplate] nightvision_armor_total 3
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/leather/leggings] nightvision_armor_total 2
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/leather/boots] nightvision_armor_total 1

scoreboard players add @s[predicate=nincodedo:is/entity/wearing/chainmail/chestplate] nightvision_armor_total 5
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/chainmail/leggings] nightvision_armor_total 4
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/chainmail/boots] nightvision_armor_total 1

scoreboard players add @s[predicate=nincodedo:is/entity/wearing/iron/chestplate] nightvision_armor_total 6
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/iron/leggings] nightvision_armor_total 5
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/iron/boots] nightvision_armor_total 2

scoreboard players add @s[predicate=nincodedo:is/entity/wearing/gold/chestplate] nightvision_armor_total 5
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/gold/leggings] nightvision_armor_total 3
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/gold/boots] nightvision_armor_total 1

scoreboard players add @s[predicate=nincodedo:is/entity/wearing/diamond/chestplate] nightvision_armor_total 10
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/diamond/leggings] nightvision_armor_total 8
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/diamond/boots] nightvision_armor_total 5

scoreboard players add @s[predicate=nincodedo:is/entity/wearing/netherite/chestplate] nightvision_armor_total 12
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/netherite/leggings] nightvision_armor_total 10
scoreboard players add @s[predicate=nincodedo:is/entity/wearing/netherite/boots] nightvision_armor_total 7

data modify storage nincodedo:storage nightvision.Enchantments set from entity @s Inventory[{tag:{NinUnique:"UG"}}].tag.Enchantments

scoreboard players set @s[predicate=!nincodedo:is/entity/wearing/leather/helmet,scores={nightvision_armor_total=..7}] nightvision_armor_changed 1
scoreboard players set @s[predicate=!nincodedo:is/entity/wearing/gold/helmet,scores={nightvision_armor_total=8..9}] nightvision_armor_changed 2
scoreboard players set @s[predicate=!nincodedo:is/entity/wearing/chainmail/helmet,scores={nightvision_armor_total=10..11}] nightvision_armor_changed 3
scoreboard players set @s[predicate=!nincodedo:is/entity/wearing/iron/helmet,scores={nightvision_armor_total=12..18}] nightvision_armor_changed 4
scoreboard players set @s[predicate=!nincodedo:is/entity/wearing/diamond/helmet,scores={nightvision_armor_total=19..26}] nightvision_armor_changed 5
scoreboard players set @s[predicate=!nincodedo:is/entity/wearing/netherite/helmet,scores={nightvision_armor_total=27..}] nightvision_armor_changed 6

tellraw @a[tag=debug_logging] [{"text":"[Debug] Night Vision Armor: Changed to ","extra":[{"score":{"name":"@s","objective":"nightvision_armor_changed"}}]},{"text":" total: ","extra":[{"score":{"name":"@s","objective":"nightvision_armor_total"}}]}]

item replace entity @s[scores={nightvision_armor_changed=1,nightvision_armor_total=..7}] armor.head with leather_helmet
item replace entity @s[scores={nightvision_armor_changed=2,nightvision_armor_total=8..9}] armor.head with golden_helmet
item replace entity @s[scores={nightvision_armor_changed=3,nightvision_armor_total=10..11}] armor.head with chainmail_helmet
item replace entity @s[scores={nightvision_armor_changed=4,nightvision_armor_total=12..18}] armor.head with iron_helmet
item replace entity @s[scores={nightvision_armor_changed=5,nightvision_armor_total=19..26}] armor.head with diamond_helmet
item replace entity @s[scores={nightvision_armor_changed=6,nightvision_armor_total=27..}] armor.head with netherite_helmet

item modify entity @s[scores={nightvision_armor_changed=1..}] armor.head nincodedo:uniqueitems/nightvision_reconstruct

advancement revoke @s only nincodedo:unique_items/nightvision/update_armor
