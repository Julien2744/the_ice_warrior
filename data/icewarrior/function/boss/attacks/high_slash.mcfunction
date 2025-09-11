playsound entity.player.attack.sweep hostile @a[distance=..8] ~ ~ ~ 2 2

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 if entity @n[tag=icew.target,distance=..1.9] run execute if function icewarrior:boss/attacks/damage/high_slash run execute on passengers run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 if entity @n[tag=icew.target,distance=..1.9] run launch @n[tag=icew.target,distance=..1.9] looking 1