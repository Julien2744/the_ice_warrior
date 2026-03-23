playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 1

execute on vehicle positioned ~ ~-1.5 ~ run function icewarrior:boss/attacks/damage/master_trident_poke

execute if entity @n[tag=icew.target,distance=..3.5] unless entity @n[tag=icew.target,distance=..3.5,nbt={HurtTime:0s}] run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] if score @s icew.combo matches 1.. run scoreboard players remove @s icew.combo 1
execute on vehicle run data remove entity @s HandItems[0].id