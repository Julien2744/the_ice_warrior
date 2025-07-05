scoreboard players set @s icew.combo 999

playsound minecraft:block.enchantment_table.use hostile @a[distance=..16] ~ ~ ~ 4 2

data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 1b
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 1b