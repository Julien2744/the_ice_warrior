execute facing entity @n[tag=icew.target,distance=..64] eyes run rotate @s ~ 0
execute on vehicle at @s positioned ~ ~-2 ~ if entity @n[tag=icew.target,distance=..32] run launch @s toward @n[tag=icew.target,distance=..32] 3
execute on vehicle at @s positioned ~ ~-2 ~ if entity @n[tag=icew.target,distance=..32] run launch @s toward @n[tag=icew.target,distance=..32] 3.5
playsound minecraft:entity.breeze.shoot hostile @a[distance=..32] ~ ~ ~ 6 1
particle minecraft:poof ~ ~-1.75 ~ 0 0 0 0.1 10 normal
scoreboard players set @s icew.lookTarget 0
tag @s add icew.launchToTarget