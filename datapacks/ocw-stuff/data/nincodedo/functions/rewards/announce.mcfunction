tellraw @s[scores={advrewards=1}] {"text":"You got 1 reward from the previous world's advancements! Nice!","italic":true}
tellraw @s[scores={advrewards=2..}] [{"text":"You got ","italic":true},{"score":{"name":"@s","objective":"advrewards"},"italic":true},{"text":" rewards from the previous world's advancements! Nice!","italic":true}]
