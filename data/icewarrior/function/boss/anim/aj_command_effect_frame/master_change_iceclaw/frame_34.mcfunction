scoreboard players set @s icew.lookTarget 1
scoreboard players set @s icew.p3_change_weapon 120
execute on vehicle run data modify entity @s Invulnerable set value 0b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] view_range set value 0b