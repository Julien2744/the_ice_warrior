data modify entity @s Invulnerable set value 1b

attribute @s minecraft:armor modifier remove icewarrior:trident_armor
attribute @s minecraft:armor_toughness modifier remove icewarrior:trident_armor_toughness
attribute @s minecraft:knockback_resistance modifier remove icewarrior:trident_knockback_resistance
attribute @s minecraft:movement_speed modifier remove icewarrior:trident_movement_speed

attribute @s minecraft:armor modifier add icew.broken_armor -2 add_value
attribute @s minecraft:armor_toughness modifier add icew.broken_toughness -1 add_value