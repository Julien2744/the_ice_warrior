execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 if entity @n[tag=icew.target,distance=..2.25] run scoreboard players add @s icew.combo 1
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 unless entity @n[tag=icew.target,distance=..2.25] run scoreboard players set @s icew.combo 0

playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 2

execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 mob_attack by @s
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^2 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 mob_attack by @s
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^3 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 mob_attack by @s