scoreboard objectives add sleepAdvCheck dummy
scoreboard objectives add sleepAdvReq dummy
scoreboard players add global sleepAdvCheck 1
scoreboard players set global sleepAdvReq 3
execute if score global sleepAdvCheck >= global sleepAdvReq run morpheus percent 50