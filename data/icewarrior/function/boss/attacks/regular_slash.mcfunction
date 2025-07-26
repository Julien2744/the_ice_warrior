execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 if entity @n[tag=icew.target,distance=..1.9] run scoreboard players add @s icew.combo 1
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 unless entity @n[tag=icew.target,distance=..1.9] run scoreboard players set @s icew.combo 0

playsound minecraft:entity.player.attack.sweep hostile @a[distance=..8] ~ ~ ~ 2 1

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 if entity @n[tag=icew.target,distance=..1.9] run damage @n[tag=icew.target,distance=..1.9] 8 icewarrior:ice_warrior_attack by @s