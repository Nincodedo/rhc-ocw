scoreboard players operation math total -= math one
execute store result bossbar endserver value run scoreboard players get math total
execute if score math total >= math one run schedule function nincodedo:count_countdown 1s append
