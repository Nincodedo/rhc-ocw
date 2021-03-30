bossbar add endserver {"text": "The End Is Near"}
bossbar set endserver color red
bossbar set endserver max 20
bossbar set endserver value 20
bossbar set endserver players @a
scoreboard objectives add one dummy
scoreboard players set @a[advancements={nincodedo:death_by_entity=true}, limit=1] one 1
scoreboard objectives add total dummy
scoreboard players set @a[advancements={nincodedo:death_by_entity=true}, limit=1] total 20
schedule function nincodedo:count_countdown 1t
