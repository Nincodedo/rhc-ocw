scoreboard objectives add day1toolticks dummy
scoreboard objectives add day1tooldisplay dummy
scoreboard objectives add day1tooltime trigger

scoreboard players set day1tooltickinit rhcconfig 24000
scoreboard players set ticktominutes math 1200

data modify storage nincodedo:storage rewards.tag set value {NinReward:1}
