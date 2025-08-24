playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute if function icewarrior:boss/attacks/damage/trident_big_slash run execute on passengers run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] looking 0.5
execute on vehicle run data remove entity @s HandItems[0].id