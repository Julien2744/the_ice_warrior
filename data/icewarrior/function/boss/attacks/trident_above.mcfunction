playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 2

execute on vehicle positioned ^ ^ ^0.5 run function icewarrior:boss/attacks/damage/trident_above
execute positioned ^ ^ ^0.5 positioned ~ ~2.5 ~ if entity @n[tag=icew.target,distance=..2] unless entity @n[tag=icew.target,distance=..2,nbt={HurtTime:0s}] run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0
execute on vehicle run data remove entity @s HandItems[0].id