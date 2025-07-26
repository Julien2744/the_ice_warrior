playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 4 1
function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#update target using mob-hitbox target
execute on target run function icewarrior:set_target

#remove target on creavite/spectator player
tag @n[type=player,gamemode=creative,tag=icew.target] remove icew.target
tag @n[type=player,gamemode=spectator,tag=icew.target] remove icew.target