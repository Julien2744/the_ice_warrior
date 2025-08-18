execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 if entity @n[tag=icew.target,distance=..2] run scoreboard players add @s icew.combo 1
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 unless entity @n[tag=icew.target,distance=..2] run scoreboard players set @s icew.combo 0

playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}
execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute if score @s icew.phase matches 1 positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] setMotion 0 0.8 0
execute if score @s icew.phase matches 2 positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2] setMotion 0 1 0
execute on vehicle run data remove entity @s HandItems[0].id