execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 if entity @n[tag=icew.target,distance=..2] run scoreboard players add @s icew.combo 1
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 unless entity @n[tag=icew.target,distance=..2] run scoreboard players set @s icew.combo 0

playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.5

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] setMotion 0 0.8 0