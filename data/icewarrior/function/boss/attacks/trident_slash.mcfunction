execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 if entity @n[tag=icew.target,distance=..2.25] run scoreboard players add @s icew.combo 1
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 unless entity @n[tag=icew.target,distance=..2.25] run scoreboard players set @s icew.combo 0

playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.25] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 12 icewarrior:ice_warrior_attack by @s