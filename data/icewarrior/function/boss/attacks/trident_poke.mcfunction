playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 2

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] positioned ~ ~-0.75 ~ run function icewarrior:boss/attacks/damage/trident_poke
execute if entity @n[tag=icew.target,distance=..3.5] unless entity @n[tag=icew.target,distance=..3.5,nbt={HurtTime:0s}] run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0
execute on vehicle run data remove entity @s HandItems[0].id