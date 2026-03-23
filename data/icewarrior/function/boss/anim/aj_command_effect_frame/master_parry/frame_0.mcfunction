tag @s add icew.master_parry
execute positioned ~ ~-0.75 ~ run particle minecraft:electric_spark ^ ^ ^1 0 0 0 0.5 5 normal
playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..32] ~ ~ ~ 6 1
execute on vehicle run attribute @s generic.knockback_resistance modifier add icew.master_parry 1 add_value
execute on vehicle run effect give @s minecraft:resistance 10 5 true