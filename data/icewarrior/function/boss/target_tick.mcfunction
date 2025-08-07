#tp the bait to the target
execute positioned as @n[type=!player,tag=icew.target,distance=..128] run tp @n[type=bat,tag=icew.bait] ~ ~ ~

#auto set_target using the mob-hitbox target
execute unless entity @n[tag=icew.target,distance=..128] run execute on vehicle on target if entity @s[tag=!icew.immune] run function icewarrior:set_target

#auto set_target by checking if there entity that aggro the boss
execute unless entity @n[type=!player,tag=icew.target,distance=..128] run execute if entity @n[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..16] run execute on vehicle if entity @s[nbt={HurtTime:0s}] run execute as @n[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..16] run function icewarrior:set_target

#remove mob-hitbox target if his target isn't the bait or has the tag icew.immune
execute on vehicle unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] if entity @s[predicate=icewarrior:has_target] on target if entity @s[predicate=icewarrior:cannot_target] run attribute @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] generic.follow_range modifier add icew.forget_target -999 add_value

#re-give followrange if the mob-hitbox doesn't have a target
execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] if entity @s[nbt={HurtTime:0s}] unless entity @s[predicate=icewarrior:has_target] run attribute @s minecraft:generic.follow_range modifier remove icew.forget_target

#make the mob-hitbox target the bait
execute if entity @n[type=!player,tag=icew.target,distance=..128] run execute on vehicle unless entity @s[predicate=icewarrior:has_target] if entity @s[nbt={HurtTime:0s}] run damage @s 0 icewarrior:aggro_boss by @n[type=bat,tag=icew.bait,distance=..128]

#kill bait if no target
execute if entity @n[type=bat,tag=icew.bait,distance=..128] unless entity @n[tag=icew.target] run kill @n[type=bat,tag=icew.bait,distance=..128]

#revome target on creative/spectator player
execute if entity @n[type=player,tag=icew.target,gamemode=!survival,gamemode=!adventure,distance=..128] run tag @p[tag=icew.target,gamemode=!survival,gamemode=!adventure,distance=..128] remove icew.target