scoreboard players set mastersword rhcdata 1
execute if entity @s[predicate=nincodedo:isentitymetallink] if score masterswordfirst rhcdata matches 0 run playsound nincodedo:mastersword.get_sword master @a ~ ~ ~ 1 1 1
execute if entity @s[predicate=nincodedo:isentitymetallink] if score masterswordfirst rhcdata matches 0 run schedule function nincodedo:advancements/first_mastersword 11s
execute if score config_debug rhcconfig matches 1 if score masterswordfirst rhcdata matches 0 run playsound nincodedo:mastersword.get_sword master @a ~ ~ ~ 1 1 1
execute if score config_debug rhcconfig matches 1 if score masterswordfirst rhcdata matches 0 run schedule function nincodedo:advancements/first_mastersword 11s
