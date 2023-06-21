tag @s remove ascending
function nincodedo:uniqueitems/abilities/ascend/reset_scores
stopsound @s player nincodedo:item.ascend.initial_activate_bg_loop
playsound nincodedo:item.ascend.end_hand_power player @a ~ ~ ~ 1 1 1
advancement revoke @s only nincodedo:unique_items/ascend/stop_initial
