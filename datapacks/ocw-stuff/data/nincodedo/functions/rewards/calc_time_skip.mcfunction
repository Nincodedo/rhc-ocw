scoreboard players set dayskipcalc rhcdata 24000
scoreboard players operation dayskipcalc rhcdata -= nolddaytime rhcdata
execute if score dayskipcalc rhcdata matches ..40 run scoreboard players set dayskipcalc rhcdata 0

scoreboard players operation @a[scores={day1toolticks=1..}] day1toolticks -= dayskipcalc rhcdata

execute if score dayskipcalc rhcdata matches 1.. run tellraw @a[tag=debug_logging] {"text": "[Debug] Time skip ticks: ", "extra":[{"score":{"name": "dayskipcalc","objective": "rhcdata"}}]}
