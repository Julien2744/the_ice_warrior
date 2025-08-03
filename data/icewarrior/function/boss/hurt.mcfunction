execute unless entity @s[tag=icew.aggro_dmg] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1

function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#make the mob-hitbox forget his target if it has the tag icew.immune
execute unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] on target if entity @s[tag=icew.immune] run data merge entity @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] {attributes:[{id:"minecraft:generic.follow_range",base:0}]}

#5% to change the target if hes too far away
execute if entity @n[tag=icew.target,distance=24..128] run execute if predicate icewarrior:random_5 on attacker if entity @s[tag=!icew.target,tag=!icew.immune] run function icewarrior:boss/change_target

#remove target on creavite/spectator player
tag @n[type=player,gamemode=creative,tag=icew.target] remove icew.target
tag @n[type=player,gamemode=spectator,tag=icew.target] remove icew.target

execute if entity @s[tag=icew.aggro_dmg] run tag @s remove icew.aggro_dmg