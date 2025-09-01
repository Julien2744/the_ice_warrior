#tp the bait to the target
execute positioned as @n[type=!player,tag=icew.target,distance=..128] run tp @n[type=bat,tag=icew.bait] ~ ~ ~

#auto set_target using the mob-hitbox target
execute unless entity @e[tag=icew.target,distance=..128,limit=1] run execute on vehicle on target if entity @s[tag=!icew.immune] run function icewarrior:set_target

#auto set_target by checking if there entity that aggro the boss
execute unless entity @e[type=!player,tag=icew.target,distance=..128,limit=1] run execute if entity @e[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..16,limit=1] run execute on vehicle if entity @s[nbt={HurtTime:0s}] run execute as @n[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..16] run function icewarrior:set_target

#remove mob-hitbox target if his target isn't the bait or has the tag icew.immune
execute if entity @e[type=!player,tag=icew.target,distance=..128,limit=1] run execute on vehicle unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] if entity @s[predicate=icewarrior:has_target] on target if entity @s[predicate=icewarrior:cannot_target] run attribute @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] generic.follow_range modifier add icew.forget_target -999 add_value

#re-give followrange if the mob-hitbox doesn't have a target
execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] if entity @s[nbt={HurtTime:0s}] unless entity @s[predicate=icewarrior:has_target] run attribute @s minecraft:generic.follow_range modifier remove icew.forget_target

#make the mob-hitbox target the bait
execute if entity @e[type=!player,tag=icew.target,distance=..64,limit=1] run execute on vehicle unless entity @s[predicate=icewarrior:has_target] if entity @s[nbt={HurtTime:0s}] run damage @s 0 icewarrior:aggro_boss by @e[type=bat,tag=icew.bait,distance=..64,limit=1]

#kill bait if no target
execute if entity @e[type=bat,tag=icew.bait,distance=..128,limit=1] unless entity @n[tag=icew.target] run kill @e[type=bat,tag=icew.bait,distance=..128,limit=1]

#remove target on creative/spectator player
execute if entity @e[type=player,tag=icew.target,gamemode=!survival,gamemode=!adventure,distance=..64,limit=1] run tag @p[tag=icew.target,gamemode=!survival,gamemode=!adventure,distance=..64] remove icew.target