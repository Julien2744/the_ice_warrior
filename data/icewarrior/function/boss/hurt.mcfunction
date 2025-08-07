#execute unless entity @s[tag=icew.aggro_dmg] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1
execute on attacker unless entity @s[type=bat,tag=icew.bait] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1

function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#make the mob-hitbox forget his target if it has the tag icew.immune
execute unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] on target if entity @s[tag=icew.immune,tag=!icew.bait] run attribute @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] generic.follow_range modifier add icew.forget_target -999 add_value

#5% to change the target if hes too far away
execute if entity @n[tag=icew.target,distance=24..128] run execute if predicate icewarrior:random_50 on attacker if entity @s[tag=!icew.target,tag=!icew.immune] run function icewarrior:set_target