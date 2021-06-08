execute as @a[predicate=nincodedo:strip_mine_nerf/issurroundedbystoneatlowylevel] run effect give @s minecraft:mining_fatigue 60 4
execute if score nin.config stripminenerf matches 1 run schedule function nincodedo:strip_mining_nerf 5s
