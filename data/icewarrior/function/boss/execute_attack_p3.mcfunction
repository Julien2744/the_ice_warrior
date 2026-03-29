# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

#$say test p3 - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p3 {ID:}

function icewarrior:boss/stop_walking

#master_trident_slash
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.attCooldown 70
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.forceWalk 1
execute if score @s icew.abilityID matches 1 run function animated_java:ice_warrior/animations/master_trident_slash/play

#master_trident_slash_poke
execute if score @s icew.abilityID matches 2 run scoreboard players set @s icew.attCooldown 45
execute if score @s icew.abilityID matches 2 run scoreboard players set @s icew.forceWalk 0
execute if score @s icew.abilityID matches 2 run function animated_java:ice_warrior/animations/master_trident_slash/stop
execute if score @s icew.abilityID matches 2 run function animated_java:ice_warrior/animations/master_trident_slash_poke/play

#master_trident_slash_mace
execute if score @s icew.abilityID matches 3 run scoreboard players set @s icew.attCooldown 60
execute if score @s icew.abilityID matches 3 run function animated_java:ice_warrior/animations/master_trident_slash/stop
execute if score @s icew.abilityID matches 3 run function animated_java:ice_warrior/animations/master_trident_slash_mace/play

#master_parry
execute if score @s icew.abilityID matches 4 run scoreboard players set @s icew.attCooldown 35
execute if score @s icew.abilityID matches 4 run tag @s remove icew.will_parry
execute if score @s icew.abilityID matches 4 run function animated_java:ice_warrior/animations/master_parry/play

#master_upper_dash
execute if score @s icew.abilityID matches 5 run scoreboard players set @s icew.attCooldown 34
execute if score @s icew.abilityID matches 5 run function animated_java:ice_warrior/animations/master_upper_dash/play

#master_upper_dash_end
execute if score @s icew.abilityID matches 6 run scoreboard players set @s icew.attCooldown 30
execute if score @s icew.abilityID matches 6 run tag @s remove icew.launchToTarget
execute if score @s icew.abilityID matches 6 run function animated_java:ice_warrior/animations/master_upper_dash_end/play

#master_trident_crit/
execute if score @s icew.abilityID matches 7 run scoreboard players set @s icew.attCooldown 86
execute if score @s icew.abilityID matches 7 run function animated_java:ice_warrior/animations/master_trident_crit/play

#keep at end of file
scoreboard players set @s icew.abilityID 0