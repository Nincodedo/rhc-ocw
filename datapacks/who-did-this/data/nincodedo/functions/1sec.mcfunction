execute store result score CurrentAttempt rhcdata run time query day
execute store result score newdaytime rhcdata run time query daytime
execute if score newdaytime rhcdata < olddaytime rhcdata if score CurrentAttempt rhcdata > HighScore rhcdata as @a[tag=!highscoreseen] run function nincodedo:announce_dawn_of_day
execute store result score olddaytime rhcdata run time query daytime

schedule function nincodedo:1sec 1s
