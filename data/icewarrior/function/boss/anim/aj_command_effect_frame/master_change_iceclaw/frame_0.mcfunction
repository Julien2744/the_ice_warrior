scoreboard players set @s icew.lookTarget 0
execute on vehicle run data modify entity @s Invulnerable set value 1b
playsound minecraft:entity.pillager.ambient hostile @a[distance=..32] ~ ~ ~ 6 0
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] view_range set value 1b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] view_range set value 1b