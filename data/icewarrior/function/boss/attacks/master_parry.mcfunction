execute positioned ~ ~-0.75 ~ run particle minecraft:electric_spark ^ ^ ^1 0 0 0 0.25 10 normal
playsound minecraft:block.anvil.land hostile @a[distance=..32] ~ ~ ~ 6 2

execute on vehicle run attribute @s generic.knockback_resistance modifier remove icew.master_parry
execute on vehicle run effect clear @s minecraft:resistance

say execute parry slash