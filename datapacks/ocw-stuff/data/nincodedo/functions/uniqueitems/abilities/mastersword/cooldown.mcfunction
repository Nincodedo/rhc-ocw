scoreboard players set one math 1

execute if score ms_cooldown rhcdata matches 1.. run scoreboard players operation ms_cooldown rhcdata -= one math
execute if score ms_cooldown rhcdata matches ..0 run scoreboard players set ms_cooldown rhcdata 0
execute if score ms_cooldown rhcdata matches 1.. run schedule function nincodedo:uniqueitems/abilities/mastersword/cooldown 1t
