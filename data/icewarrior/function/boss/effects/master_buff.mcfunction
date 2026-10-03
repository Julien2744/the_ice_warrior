tag @s add icew.master_parent
data modify entity @s CustomName set value "The Ice Warrior"

attribute @s minecraft:armor modifier add icewarrior:trident_armor 2.5 add_value
attribute @s minecraft:armor_toughness modifier add icewarrior:trident_armor_toughness 1 add_value
attribute @s minecraft:knockback_resistance modifier add icewarrior:trident_knockback_resistance 0.1 add_value
attribute @s minecraft:movement_speed modifier add icewarrior:trident_movement_speed 0.025 add_value

attribute @s minecraft:max_health base set 250
execute store result entity @s Health double 1 run attribute @s minecraft:max_health get