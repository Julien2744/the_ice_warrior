execute if entity @n[tag=icew.target,tag=icew.immune,distance=..128] run tag @n[tag=icew.target,tag=icew.immune,distance=..128] remove icew.target

execute on attacker unless entity @s[type=bat,tag=icew.bait] run playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 2 1

function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#5% to change the target if hes too far away
execute if entity @n[tag=icew.target,distance=24..128] run execute if predicate icewarrior:random_5 on attacker if entity @s[tag=!icew.target,tag=!icew.immune] run function icewarrior:set_target