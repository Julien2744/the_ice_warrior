playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 4 1
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#update target
execute on target run function icewarrior:set_target