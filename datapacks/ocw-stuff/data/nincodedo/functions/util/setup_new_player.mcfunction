scoreboard players enable @s bannerplz
scoreboard players enable @s ping
execute unless score @s ping_color matches 1..16 run scoreboard players set @s ping_color 2
loot give @s loot nincodedo:docs/faq_book
execute store result score @s day1toolticks run scoreboard players get day1tooltickinit rhcconfig

tag @s add triggerbannerenabled
