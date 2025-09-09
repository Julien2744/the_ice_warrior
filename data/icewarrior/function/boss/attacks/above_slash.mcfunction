playsound minecraft:entity.player.attack.sweep hostile @a[distance=..8] ~ ~ ~ 2 1

execute on vehicle positioned ^ ^ ^0.5 run function icewarrior:boss/attacks/damage/above_slash
execute positioned ^ ^ ^0.5 positioned ~ ~2 ~ if entity @n[tag=icew.target,distance=..2] unless entity @n[tag=icew.target,distance=..2,nbt={HurtTime:0s}] run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0