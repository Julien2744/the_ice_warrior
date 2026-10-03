playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute on vehicle run function icewarrior:boss/attacks/common_disable_shield
execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 \
    if function icewarrior:boss/attacks/damage/trident_upper \
    on passengers run scoreboard players add @s icew.combo 1

execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0
execute on vehicle run function icewarrior:boss/attacks/common_enable_shield

execute if score @s icew.phase matches 1 positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] setMotion 0 0.8 0
execute if score @s icew.phase matches 2 positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] setMotion 0 1 0