scoreboard players set @s icew.combo 0

playsound minecraft:entity.player.attack.crit hostile @a[distance=..16] ~ ~ ~ 4 0
playsound minecraft:entity.lightning_bolt.thunder hostile @a[distance=..16] ~ ~ ~ 4 2

execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..2] run execute positioned as @n[tag=icew.target,distance=..2] run particle minecraft:damage_indicator ~ ~1 ~ 0 0 0 0.5 5 normal

#heal 7.5% of his health on miss
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute unless entity @n[tag=icew.target,distance=..2] run function icewarrior:boss/effects/miss_ult_slash

execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}
execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 if entity @n[tag=icew.target,distance=..2] run damage @n[tag=icew.target,distance=..2] 24 icewarrior:ice_warrior_attack by @s
execute on vehicle run data remove entity @s HandItems[0].id

data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b