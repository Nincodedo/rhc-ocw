# Night Vision

scoreboard objectives add nightvision_armor_total dummy
scoreboard objectives add nightvision_armor_changed dummy

# Ascend

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

# Potion Bundle

data modify storage nincodedo:potions unlimitedpotiontag set value {NinUnique:"UnlimitedPotion"}

# Moon Dagger

scoreboard objectives add moon_dagger_effect dummy
scoreboard objectives add moon_dagger_stealth_strike_cooldown dummy
scoreboard objectives add used_moon_dagger minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set moon_dagger_stun_time_ticks rhcconfig 20
scoreboard players set moon_dagger_cooldown_time_ticks rhcconfig 300
