scoreboard objectives add ascend_phase dummy
scoreboard objectives add ascend_height_check dummy
scoreboard objectives add ascend_ok_start dummy
scoreboard objectives add ascend_initial_bg_loop dummy
scoreboard objectives add ascend_start_y dummy
scoreboard objectives add ascend_x dummy
scoreboard objectives add ascend_y dummy
scoreboard objectives add ascend_z dummy
scoreboard objectives add ascend_accept_timeout dummy
scoreboard objectives add ascend_prev_gamemode dummy
scoreboard objectives add ascend_anchor_check dummy
scoreboard objectives add ascend_emergency_fix trigger
scoreboard objectives add ascend_tutorial_popup_toggle trigger
scoreboard players set ascend_height_limit rhcconfig 10
scoreboard players set ascend_accept_timeout rhcconfig 600
scoreboard players set 2 math 2

data modify storage nincodedo:potions unlimitedpotiontag set value {NinUnique:"UnlimitedPotion"}
