gamemode survival @s[scores={ascend_prev_gamemode=0}]
gamemode creative @s[scores={ascend_prev_gamemode=1}]
gamemode adventure @s[scores={ascend_prev_gamemode=2}]
gamemode spectator @s[scores={ascend_prev_gamemode=3}]
scoreboard players reset @s ascend_prev_gamemode
scoreboard players set @s ascend_phase -1
scoreboard players reset @s ascend_y
scoreboard players reset @s ascend_start_y
scoreboard players reset @s ascend_accept_timeout
scoreboard players reset @s ascend_initial_bg_loop
scoreboard players reset @s ascend_height_check
scoreboard players reset @s ascend_ok_start
