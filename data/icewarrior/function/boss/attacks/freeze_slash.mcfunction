playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run function icewarrior:boss/attacks/damage/freeze_slash

execute on vehicle run data modify entity @s equipment.mainhand.components.minecraft:weapon.disable_blocking_for_seconds set value 0