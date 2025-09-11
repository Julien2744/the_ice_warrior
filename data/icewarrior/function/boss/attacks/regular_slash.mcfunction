playsound minecraft:entity.player.attack.sweep hostile @a[distance=..8] ~ ~ ~ 2 1

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 if entity @n[tag=icew.target,distance=..1.9] run execute on passengers run execute if function icewarrior:boss/attacks/damage/regular_slash run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0