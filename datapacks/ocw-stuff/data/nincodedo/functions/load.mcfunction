scoreboard objectives add sleepAdvCheck dummy
execute unless score global sleepAdvCheck matches 3.. run gamerule playersSleepingPercentage 100
