execute as @a[scores={ascend_phase=1}] at @s positioned ~ ~1 ~ unless entity @e[tag=ascend,distance=..1.5] on vehicle run tp ~ ~0.25 ~
execute as @a[scores={ascend_phase=1}] at @s positioned ~ ~1 ~ unless entity @e[tag=ascend,distance=..1.5] run schedule function nincodedo:uniqueitems/abilities/ascend/continue_ascend 1t
execute as @a[scores={ascend_phase=1}] at @s positioned ~ ~1 ~ if entity @e[tag=ascend,distance=..1.5] run function nincodedo:uniqueitems/abilities/ascend/tear_through_ceiling
