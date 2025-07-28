scoreboard players set @s icew.combo 0

playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] run execute positioned as @n[tag=icew.target,distance=..2] run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.5 5 normal

execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}
execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 20 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] looking 1
execute on vehicle run data remove entity @s HandItems[0].id

data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b
execute on vehicle run attribute @s generic.movement_speed modifier remove icew.trident_ult_movement_speed