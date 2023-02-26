scoreboard players operation @a[advancements={nincodedo:you_ended_this=true}, limit=1] total -= @a[advancements={nincodedo:you_ended_this=true}, limit=1] one
execute store result bossbar endthegame value run scoreboard players get @a[advancements={nincodedo:you_ended_this=true}, limit=1] total
execute if score @a[advancements={nincodedo:you_ended_this=true}, limit=1] total >= @a[advancements={nincodedo:you_ended_this=true}, limit=1] one run schedule function nincodedo:count_end_countdown 1s append
