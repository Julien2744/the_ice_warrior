scoreboard players set @s icew.combo 0

playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] run execute positioned as @n[tag=icew.target,distance=..2] run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.5 5 normal

execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 20 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] looking 1

data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b