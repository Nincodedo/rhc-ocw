tag @s[tag=nopotionsplz] add soon_potionsplz
tag @s[tag=!nopotionsplz] add nopotionsplz
tag @s[tag=soon_potionsplz] remove nopotionsplz
tag @s[tag=soon_potionsplz] remove soon_potionsplz

tellraw @s[tag=nopotionsplz] [{"text":"You have opted out of receiving potion effects from ShokkZ's Potion Horn. Use ","italic":false},{"text":"/trigger nopotionsplz","italic":true,"clickEvent":{"action":"suggest_command","value":"/trigger nopotionsplz"}},{"text":" again to opt in.","italic":false}]
tellraw @s[tag=!nopotionsplz] [{"text":"You have opted in to receiving potion effects from ShokkZ's Potion Horn. Use ","italic":false},{"text":"/trigger nopotionsplz","italic":true,"clickEvent":{"action":"suggest_command","value":"/trigger nopotionsplz"}},{"text":" again to opt out.","italic":false}]

scoreboard players enable @s nopotionsplz
scoreboard players set @s nopotionsplz 0
