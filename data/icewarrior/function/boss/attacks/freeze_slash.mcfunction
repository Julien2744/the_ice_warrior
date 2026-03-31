playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run function icewarrior:boss/attacks/damage/freeze_slash

execute on vehicle run data remove entity @s HandItems[0].id