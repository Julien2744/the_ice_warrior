tag @s add icew.master
function animated_java:ice_warrior/variants/master/apply

#set bossbar max value
execute if score #icew.config icew.config.bossbar matches 0 run execute store result bossbar icew_bossbar max run execute on vehicle run attribute @s generic.max_health get
execute if score #icew.config icew.config.bossbar matches 0 run execute store result bossbar icew_bossbar value run execute on vehicle run data get entity @s Health

execute on vehicle run function icewarrior:boss/effects/master_buff

scoreboard players set @s icew.phase 3
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] view_range set value 1b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] view_range set value 0b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] view_range set value 0b