execute facing entity @n[tag=icew.target,distance=..64] eyes run tp @s ~ ~ ~ ~ 0
execute on vehicle at @s facing entity @n[tag=icew.target,distance=..32] eyes rotated ~ ~-3 run launch @s looking 3
execute on vehicle at @s facing entity @n[tag=icew.target,distance=33..64] eyes rotated ~ ~-6 run launch @s looking 4.5
playsound minecraft:entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 6 1
particle minecraft:poof ~ ~-1.75 ~ 0 0 0 0.1 10 normal
scoreboard players set @s icew.lookTarget 0
tag @s add icew.launchToTarget