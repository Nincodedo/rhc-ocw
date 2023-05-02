playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Metal_Link's minor gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/metal_gifts/root
give @s player_head{display:{Name:'{"text":"Metal_Link\'s Head","italic":false}'},SkullOwner:{Id:[I;728261988,1914457309,-1368635718,-1871894628],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGFiNDY2ZjIwYzhkZGJmYWJhOGE1Yjg3NDM4MjQ1MTkxZTBkOWFkM2Q5MjZmMDlmZmJkN2U4NGQxOTg2ZjhkZiJ9fX0="}]}}} 1
scoreboard players add @s ocwplayergiftcount 1
