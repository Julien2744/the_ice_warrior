execute unless entity @s[tag=icew.aggro_dmg] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1
function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#fix mob-hitbox forgetting his target
execute if entity @n[tag=icew.target,distance=..128] unless entity @s[predicate=icewarrior:check_target] run tag @n[tag=icew.target,distance=..256] remove icew.target

#update target using mob-hitbox target
execute on target unless entity @s[tag=icew.target] run function icewarrior:set_target

#remove target on creavite/spectator player
tag @n[type=player,gamemode=creative,tag=icew.target] remove icew.target
tag @n[type=player,gamemode=spectator,tag=icew.target] remove icew.target

execute if entity @s[tag=icew.aggro_dmg] run data merge entity @s {HurtTime:0s}
execute if entity @s[tag=icew.aggro_dmg] run tag @s remove icew.aggro_dmg