playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
tellraw @a [{"selector":"@s"},{"text":" completed all of Nincodedo's gift advancements!"}]
advancement grant @s only nincodedo:player_gifts/nin_gifts/root
give @s player_head{display:{Name:'{"text":"Nincodedo\'s Head","italic":false}'},SkullOwner:{Id:[I;1690553640,1879984183,-1924351694,87346173],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2Y0NzUxMDNkNjljYTI5ODFhYTI3ZjhkMjFiMmQ5MDYwNjZmYTZjYTlhYzQyNWVhMTU2NDUzZDRmMTRjNjc2YyJ9fX0="}]}}} 1
scoreboard players add @s ocwplayergiftcount 1
