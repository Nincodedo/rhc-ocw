scoreboard objectives add sleepAdvCheck dummy
scoreboard objectives add sleepAdvReq dummy
scoreboard players add global sleepAdvCheck 1
execute if score global sleepAdvCheck matches 3.. run morpheus percent 60
