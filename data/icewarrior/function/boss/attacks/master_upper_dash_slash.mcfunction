playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle positioned ^ ^ ^0.5 positioned ~ ~-2 ~ run execute if function icewarrior:boss/attacks/damage/trident_slash run execute on passengers run scoreboard players add @s icew.combo 1

execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] if score @s icew.combo matches 1.. run scoreboard players remove @s icew.combo 1
execute on vehicle run data remove entity @s HandItems[0].id

execute on vehicle facing entity @n[tag=icew.target,distance=..6] feet rotated ~ 0 run tp @s ^ ^ ^3
execute on vehicle run launch @s setMotion 0 0.4 0
execute on vehicle run launch @s looking -0.7

scoreboard players set @s icew.lookTarget 1