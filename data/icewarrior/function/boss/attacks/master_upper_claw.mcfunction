playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1 if entity @n[tag=icew.target,distance=..1.9] run execute if function icewarrior:boss/attacks/damage/high_slash run execute on passengers run scoreboard players add @s icew.combo 1

execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players remove @s icew.combo 1

execute on vehicle run launch @s addMotion 0 1 0
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] setMotion 0 1 0