item modify entity @s[nbt={Inventory:[{Slot:0b,tag:{NinUnique:"Magnet"}}]}] hotbar.0 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:1b,tag:{NinUnique:"Magnet"}}]}] hotbar.1 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:2b,tag:{NinUnique:"Magnet"}}]}] hotbar.2 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:3b,tag:{NinUnique:"Magnet"}}]}] hotbar.3 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:4b,tag:{NinUnique:"Magnet"}}]}] hotbar.4 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:5b,tag:{NinUnique:"Magnet"}}]}] hotbar.5 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:6b,tag:{NinUnique:"Magnet"}}]}] hotbar.6 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:7b,tag:{NinUnique:"Magnet"}}]}] hotbar.7 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:8b,tag:{NinUnique:"Magnet"}}]}] hotbar.8 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:9b,tag:{NinUnique:"Magnet"}}]}] inventory.0 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:10b,tag:{NinUnique:"Magnet"}}]}] inventory.1 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:11b,tag:{NinUnique:"Magnet"}}]}] inventory.2 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:12b,tag:{NinUnique:"Magnet"}}]}] inventory.3 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:13b,tag:{NinUnique:"Magnet"}}]}] inventory.4 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:14b,tag:{NinUnique:"Magnet"}}]}] inventory.5 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:15b,tag:{NinUnique:"Magnet"}}]}] inventory.6 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:16b,tag:{NinUnique:"Magnet"}}]}] inventory.7 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:17b,tag:{NinUnique:"Magnet"}}]}] inventory.8 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:18b,tag:{NinUnique:"Magnet"}}]}] inventory.9 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:19b,tag:{NinUnique:"Magnet"}}]}] inventory.10 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:20b,tag:{NinUnique:"Magnet"}}]}] inventory.11 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:21b,tag:{NinUnique:"Magnet"}}]}] inventory.12 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:22b,tag:{NinUnique:"Magnet"}}]}] inventory.13 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:23b,tag:{NinUnique:"Magnet"}}]}] inventory.14 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:24b,tag:{NinUnique:"Magnet"}}]}] inventory.15 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:25b,tag:{NinUnique:"Magnet"}}]}] inventory.16 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:26b,tag:{NinUnique:"Magnet"}}]}] inventory.17 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:27b,tag:{NinUnique:"Magnet"}}]}] inventory.18 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:28b,tag:{NinUnique:"Magnet"}}]}] inventory.19 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:29b,tag:{NinUnique:"Magnet"}}]}] inventory.20 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:30b,tag:{NinUnique:"Magnet"}}]}] inventory.21 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:31b,tag:{NinUnique:"Magnet"}}]}] inventory.22 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:32b,tag:{NinUnique:"Magnet"}}]}] inventory.23 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:33b,tag:{NinUnique:"Magnet"}}]}] inventory.24 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:34b,tag:{NinUnique:"Magnet"}}]}] inventory.25 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:35b,tag:{NinUnique:"Magnet"}}]}] inventory.26 nincodedo:deactivate_magnet
item modify entity @s[nbt={Inventory:[{Slot:-106b,tag:{NinUnique:"Magnet"}}]}] weapon.offhand nincodedo:deactivate_magnet

tag @s remove active_magnet
advancement revoke @s only nincodedo:items/magnet/activate_magnet

schedule function nincodedo:items/magnet/schedule_find_fliers 1t
