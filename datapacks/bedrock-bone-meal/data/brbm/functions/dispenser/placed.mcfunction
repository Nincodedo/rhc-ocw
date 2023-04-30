execute anchored eyes run fill ^-1 ^-1 ^ ^1 ^1 ^5 minecraft:command_block{Command:"function brbm:dispenser/check_new",auto:1b,CustomName:'{"text":"N"}'} replace minecraft:dispenser[facing=north]{Items:[]}
execute anchored eyes run fill ^-1 ^-1 ^ ^1 ^1 ^5 minecraft:command_block{Command:"function brbm:dispenser/check_new",auto:1b,CustomName:'{"text":"S"}'} replace minecraft:dispenser[facing=south]{Items:[]}
execute anchored eyes run fill ^-1 ^-1 ^ ^1 ^1 ^5 minecraft:command_block{Command:"function brbm:dispenser/check_new",auto:1b,CustomName:'{"text":"E"}'} replace minecraft:dispenser[facing=east]{Items:[]}
execute anchored eyes run fill ^-1 ^-1 ^ ^1 ^1 ^5 minecraft:command_block{Command:"function brbm:dispenser/check_new",auto:1b,CustomName:'{"text":"W"}'} replace minecraft:dispenser[facing=west]{Items:[]}

schedule function brbm:dispenser/check_broken_dispenser 2.5s
schedule function brbm:dispenser/check_run 4t

advancement revoke @s only brbm:dispenser/placed
