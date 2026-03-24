scoreboard players set @s icew.lookTarget 1
tag @s remove icew.master_parry
execute on vehicle run attribute @s generic.knockback_resistance modifier remove icew.master_parry
execute on vehicle run attribute @s minecraft:generic.gravity modifier remove icew.master_parry_gravity
execute on vehicle run effect clear @s minecraft:resistance