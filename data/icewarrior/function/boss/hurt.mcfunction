execute unless entity @s[tag=icew.aggro_dmg] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1

function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#remove target on creavite/spectator player
tag @n[type=player,gamemode=creative,tag=icew.target] remove icew.target
tag @n[type=player,gamemode=spectator,tag=icew.target] remove icew.target

execute if entity @s[tag=icew.aggro_dmg] run tag @s remove icew.aggro_dmg