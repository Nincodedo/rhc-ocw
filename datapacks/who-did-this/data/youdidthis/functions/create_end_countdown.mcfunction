title @a title {"text":"you did this", "color": "blue"}
execute positioned as @e[distance=..50] run summon firework_rocket ~ ~10 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:3,Explosions:[{Type:4,Flicker:1,Trail:1,Colors:[I;2437522],FadeColors:[I;15790320]}]}}}}
bossbar add endthegame {"text": "The End Is Here"}
bossbar set endthegame color blue
bossbar set endthegame max 60
bossbar set endthegame value 60
bossbar set endthegame players @a
scoreboard players set one math 1
scoreboard players set endserverprog rhcdata 60
schedule function youdidthis:count_end_countdown 1s
