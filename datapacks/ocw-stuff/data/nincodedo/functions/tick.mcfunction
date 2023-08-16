execute as @a[scores={bannerplz=1}] at @s run function nincodedo:triggers/givebannerforlocation
execute as @a[scores={nopotionsplz=1}] run function nincodedo:triggers/nopotionsplz
execute as @a[scores={day1tooltime=1}] run function nincodedo:triggers/day1tooltimecheck
execute as @a[tag=!triggerbannerenabled] run function nincodedo:util/setup_new_player
execute if score potionhorn rhcdata matches 1 as @a[tag=!triggernopotionenabled] run scoreboard players enable @s nopotionsplz
execute if score potionhorn rhcdata matches 1 as @a[tag=!triggernopotionenabled] run tag @s add triggernopotionenabled
scoreboard players enable @a[advancements={nincodedo:unique_items/ascend/main=true},tag=!triggerascendemr] ascend_emergency_fix
tag @a[advancements={nincodedo:unique_items/ascend/main=true},tag=!triggerascendemr] add triggerascendemr
execute as @a[scores={ascend_emergency_fix=1}] at @s run function nincodedo:triggers/ascend_emergency_fix
execute as @a[scores={ascend_tutorial_popup_toggle=1}] at @s run function nincodedo:triggers/ascend_tutorial_popup_toggle
execute as @a[scores={nightvision_helmet_fix=1}] at @s run function nincodedo:triggers/fix_nightvision_helmet
scoreboard players remove @a[scores={day1toolticks=1..}] day1toolticks 1
execute as @a[scores={day1toolticks=1..}] store result score @s day1tooldisplay run scoreboard players get @s day1toolticks
scoreboard players operation @a[scores={day1toolticks=1..}] day1tooldisplay /= ticktominutes math
execute as @a[scores={day1tooldisplay=15},tag=!1stday1toolwarning] run function nincodedo:rewards/announce_day1_tool_warning
execute as @a[scores={day1tooldisplay=10},tag=!2ndday1toolwarning] run function nincodedo:rewards/announce_day1_tool_warning
execute as @a[scores={day1tooldisplay=5},tag=!3rdday1toolwarning] run function nincodedo:rewards/announce_day1_tool_warning
