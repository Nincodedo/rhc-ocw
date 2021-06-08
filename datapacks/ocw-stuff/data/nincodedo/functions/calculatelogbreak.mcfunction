scoreboard players set @a log_break 0
execute as @a run scoreboard players operation @s log_break += @s acacia_log_break
execute as @a run scoreboard players operation @s log_break += @s birch_log_break
execute as @a run scoreboard players operation @s log_break += @s drk_oa_log_break
execute as @a run scoreboard players operation @s log_break += @s jungle_log_break
execute as @a run scoreboard players operation @s log_break += @s oak_log_break
execute as @a run scoreboard players operation @s log_break += @s spruce_log_break
schedule function nincodedo:calculatelogbreak 5t
