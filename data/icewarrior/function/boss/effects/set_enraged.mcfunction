execute on vehicle run function icewarrior:boss/effects/trident_buff
execute on vehicle run data modify entity @s Invulnerable set value 0b

tag @s add icew.enraged

scoreboard players set @s icew.phase 1
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] view_range set value 1b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] view_range set value 0b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] view_range set value 0b