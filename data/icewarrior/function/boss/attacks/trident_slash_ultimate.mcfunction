execute unless score @s icew.phase matches 3 run scoreboard players set @s icew.combo 0

playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] positioned as @n[tag=icew.target,distance=..2] run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.5 5 normal

execute on vehicle run function icewarrior:boss/attacks/common_disable_shield
execute if score @s icew.phase matches 1 on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.75] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 20 icewarrior:ice_warrior_attack by @s
execute if score @s icew.phase matches 2..3 on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.75] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 22 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run launch @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.75] looking 1
execute on vehicle run data modify entity @s equipment.mainhand.components.minecraft:weapon.disable_blocking_for_seconds set value 0

data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b
execute on vehicle run attribute @s minecraft:movement_speed modifier remove icew.trident_ult_movement_speed