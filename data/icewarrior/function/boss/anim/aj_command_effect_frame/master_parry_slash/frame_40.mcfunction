scoreboard players set @s icew.lookTarget 1
tag @s remove icew.master_parry
execute on vehicle run attribute @s minecraft:knockback_resistance modifier remove icew.master_parry
execute on vehicle run attribute @s minecraft:gravity modifier remove icew.master_parry_gravity
execute on vehicle run effect clear @s minecraft:resistance