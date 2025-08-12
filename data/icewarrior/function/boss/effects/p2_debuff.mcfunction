data modify entity @s Invulnerable set value 1b

attribute @s generic.armor modifier remove icew.trident_armor
attribute @s generic.armor_toughness modifier remove icew.trident_armor_toughness
attribute @s generic.knockback_resistance modifier remove icew.trident_knockback_resistance
attribute @s generic.movement_speed modifier remove icew.trident_movement_speed

attribute @s generic.armor modifier add icew.broken_armor -2 add_value
attribute @s generic.armor_toughness modifier add icew.broken_toughness -1 add_value