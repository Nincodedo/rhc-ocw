tag @s[tag=!no_ascend_tutorial_plz] add temp_tutorial_tag
tag @s[tag=no_ascend_tutorial_plz] remove no_ascend_tutorial_plz
tag @s[tag=temp_tutorial_tag] add no_ascend_tutorial_plz
tag @s remove temp_tutorial_tag

tellraw @s[tag=!no_ascend_tutorial_plz] {"text": "Enabled Ascend tutorial text"}
tellraw @s[tag=no_ascend_tutorial_plz] {"text": "Disabled Ascend tutorial text"}

scoreboard players reset @s ascend_tutorial_popup_toggle
scoreboard players enable @s ascend_tutorial_popup_toggle
