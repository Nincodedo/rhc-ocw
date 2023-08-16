scoreboard players remove @e[tag=ping] ping_lifetime 1
kill @e[tag=block_ping,scores={ping_lifetime=..0}]

execute if entity @e[tag=ping] run schedule function nincodedo:triggers/ping/lifetime_watch 1t
