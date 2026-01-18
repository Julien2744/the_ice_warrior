tag @s add icew.master
function animated_java:ice_warrior/variants/master/apply

execute on vehicle run function icewarrior:boss/effects/master_buff

scoreboard players set @s icew.phase 3
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] view_range set value 1b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] view_range set value 0b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] view_range set value 0b