playsound minecraft:entity.player.attack.sweep hostile @a[distance=..8] ~ ~ ~ 2 1

execute on vehicle positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute on passengers run execute if function icewarrior:boss/attacks/damage/downward_slash run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0