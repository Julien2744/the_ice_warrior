#change mob-hitbox follow range from 75 to 0 if a mob is too close
execute unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] positioned ~-2 ~-1 ~-2 if entity @n[type=!#icewarrior:non_living,type=!player,tag=icew.target,dx=3,dy=1,dz=3] run data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:0}]}

#change mob-hitbox follow range from 0 to 75 if the mob got out of the range
execute if entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] positioned ~-2 ~-1 ~-2 unless entity @n[type=!#icewarrior:non_living,type=!player,tag=icew.target,dx=3,dy=1,dz=3] run data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:75}]}

#refresh target
execute unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] positioned ~-2 ~-1 ~-2 unless entity @n[type=!#icewarrior:non_living,type=!player,tag=icew.target,dx=3,dy=1,dz=3] run execute unless entity @s[predicate=icewarrior:check_target] run function icewarrior:boss/aggro_boss