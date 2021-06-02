scoreboard objectives add sleepAdvCheck dummy
scoreboard objectives add current_day dummy
execute store result score global current_day run time query day
function nincodedo:runsleepchecks
function nincodedo:setuplogbreakcount
schedule function nincodedo:calculatelogbreak 5t
