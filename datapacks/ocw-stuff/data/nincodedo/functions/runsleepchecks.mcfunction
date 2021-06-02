execute unless score global current_day matches 7.. run gamerule playersSleepingPercentage 101
execute if score global current_day matches 7.. run gamerule playersSleepingPercentage 100
execute if score global current_day matches 7.. if score global sleepAdvCheck matches 3.. run gamerule playersSleepingPercentage 60
