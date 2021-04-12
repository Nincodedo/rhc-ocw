scoreboard players operation @a[advancements={nincodedo:you_did_this=true}, limit=1] total -= @a[advancements={nincodedo:you_did_this=true}, limit=1] one
execute store result bossbar endserver value run scoreboard players get @a[advancements={nincodedo:you_did_this=true}, limit=1] total
execute if score @a[advancements={nincodedo:you_did_this=true}, limit=1] total >= @a[advancements={nincodedo:you_did_this=true}, limit=1] one run schedule function nincodedo:count_countdown 1s append
