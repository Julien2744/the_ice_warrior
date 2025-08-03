# [1] auto-target using the hitbox mob target
execute unless entity @n[tag=icew.target,distance=..128] run execute on vehicle on target if entity @s[tag=!icew.immune] run function icewarrior:set_target

# [2] auto-target by checking entity around
execute unless entity @n[tag=icew.target,distance=..128] run execute if entity @n[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..24] run execute on vehicle if entity @s[nbt={HurtTime:0s}] unless entity @s[tag=icew.aggro_dmg] run function icewarrior:boss/aggro_boss

#remove mob-hitbox target if it doesn't have the tag icew.target
execute if entity @n[tag=icew.target,distance=..128] run execute on vehicle at @s unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] if entity @s[predicate=icewarrior:has_target] on target unless entity @s[tag=icew.target] run data merge entity @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] {attributes:[{id:"minecraft:generic.follow_range",base:0}]}

#fix mob-hibox being able to damage mobs
execute if entity @n[type=!#icewarrior:non_living,tag=icew.target,tag=!icew.immune,distance=..75] run execute on vehicle if entity @s[nbt={HurtTime:0s}] unless entity @s[tag=icew.aggro_dmg] run function icewarrior:boss/auto_disable_followrange

#re give the mob-hitbox his follow range if there no target
execute unless entity @n[tag=icew.target,distance=..128] unless entity @n[tag=icew.immune,tag=!icew.hitbox,distance=..8] run execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] run data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:75}]}

#auto-target the mob-hitbox if there already a mob that have the tag icew.target
execute if entity @n[tag=icew.target,distance=..128] run execute on vehicle if entity @s[nbt={HurtTime:0s}] unless entity @s[tag=icew.aggro_dmg] unless entity @s[predicate=icewarrior:has_target] run function icewarrior:boss/aggro_by_target