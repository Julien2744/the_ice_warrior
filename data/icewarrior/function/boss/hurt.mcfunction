playsound entity.player.hurt hostile @a[distance=..16] ~ ~ ~ 4 1
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/update_health_pour

#re-gain ivis
execute unless entity @s[nbt={active_effects:[{id:"minecraft:invisibility"}]}] run effect give @s invisibility infinite 1 true

#change target
execute on attacker run execute unless entity @n[tag=icew.target,distance=..128] if entity @s[type=player,tag=!icew.immune,gamemode=!creative,gamemode=!spectator] run function icewarrior:set_target
execute on attacker run execute unless entity @n[tag=icew.target,distance=..128] if entity @s[type=!player,tag=!icew.immune] run function icewarrior:set_target

execute on attacker run execute if entity @s[type=player,tag=!icew.target,tag=!icew.immune,gamemode=!creative,gamemode=!spectator] if predicate icewarrior:random_25 run function icewarrior:set_target
execute on attacker run execute if entity @s[type=!player,tag=!icew.target,tag=!icew.immune] if predicate icewarrior:random_25 run function icewarrior:set_target