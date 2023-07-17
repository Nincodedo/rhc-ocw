scoreboard players set @a[scores={ascend_initial_bg_loop=..0}] ascend_initial_bg_loop 60
execute as @a[scores={ascend_phase=0}] at @s if score @s ascend_initial_bg_loop matches 60 run playsound nincodedo:item.ascend.initial_activate_bg_loop player @s
scoreboard players remove @a[scores={ascend_phase=0}] ascend_initial_bg_loop 1
execute as @a[scores={ascend_phase=0,ascend_initial_bg_loop=..1}] at @s unless entity @e[tag=ascend,distance=..12,sort=nearest,limit=1] run function nincodedo:uniqueitems/abilities/ascend/find_ceiling
function nincodedo:uniqueitems/abilities/ascend/initial_activate_particles
title @a[tag=!no_ascend_tutorial_plz,scores={ascend_phase=0}] actionbar [{"keybind":"key.use","color":"white","extra":[[{"text":": "}],{"translate":"gui.ascend.tutorial_prompt.ascend","fallback":"Ascend"},{"text": ", "}]},{"keybind":"key.sneak","color":"white","extra":[[{"text":": "}],{"translate":"gui.cancel","fallback":"Cancel"}]}]
execute if entity @a[scores={ascend_phase=0}] run schedule function nincodedo:uniqueitems/abilities/ascend/initial_activate_loop_bg 1t
