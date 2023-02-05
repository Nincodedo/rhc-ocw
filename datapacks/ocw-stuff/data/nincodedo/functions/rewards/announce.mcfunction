execute if score @s advrewards matches 1 run tellraw @s {"text":"You got 1 reward from the previous world's advancements! Nice!","italic":true}
execute if score @s advrewards matches 2.. run tellraw @s [{"text":"You got ","italic":true},{"score":{"name":"@s","objective":"advreward"},"italic":true},{"text":" rewards from the previous world's advancements! Nice!","italic":true}]
