playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Undead_Zeratul's minor gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/undead_gifts/root
give @s player_head{display:{Name:'{"text":"Undead_Zeratul\'s Head","italic":false}'},SkullOwner:{Id:[I;-1980149978,-1222816804,-1641757829,-223005267],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNTQ2NjdkN2Y4OTZlNzY3MTNiZmY2OWI4M2Y2YjkxMmFmOGNiNzAxNzEyNTUwNjVmNzBjOGFmNmU2NDJmOTdlZCJ9fX0="}]}}} 1
scoreboard players add @s ocwplayergiftcount 1
