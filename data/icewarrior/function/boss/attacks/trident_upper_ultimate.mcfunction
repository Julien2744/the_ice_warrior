playsound minecraft:entity.wither.shoot hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}
execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 16 icewarrior:ice_warrior_attack by @s
execute on vehicle run data remove entity @s HandItems[0].id

execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] setMotion 0 1.25 0
execute on vehicle run launch @s setMotion 0 1.25 0