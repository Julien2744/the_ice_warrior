playsound minecraft:item.shield.break hostile @a[distance=..16] ~ ~ ~ 4 0
playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 4 1

execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..1.9] run execute positioned as @n[tag=icew.target,distance=..1.9] run particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 5 normal

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute if function icewarrior:boss/attacks/damage/crit_slash run execute on passengers run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0