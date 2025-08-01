# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

#$say test - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p0 {ID:}

function icewarrior:boss/stop_walking

#parry
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.attCooldown 22
execute if score @s icew.abilityID matches 1 run function icewarrior:boss/attacks/parry
execute if score @s icew.abilityID matches 1 run function animated_java:ice_warrior/animations/parry/play

#regular_double_slash
execute if score @s icew.abilityID matches 2 run scoreboard players set @s icew.attCooldown 40
execute if score @s icew.abilityID matches 2 run function animated_java:ice_warrior/animations/regular_double_slash/play

#high_slash
execute if score @s icew.abilityID matches 3 run scoreboard players set @s icew.attCooldown 31
execute if score @s icew.abilityID matches 3 run function animated_java:ice_warrior/animations/high_slash/play

#long_claw
execute if score @s icew.abilityID matches 4 run scoreboard players set @s icew.attCooldown 33
execute if score @s icew.abilityID matches 4 run function animated_java:ice_warrior/animations/long_claw/play

#foward_slash
execute if score @s icew.abilityID matches 5 run scoreboard players set @s icew.attCooldown 37
execute if score @s icew.abilityID matches 5 run function animated_java:ice_warrior/animations/foward_slash/play

#crit_slash
execute if score @s icew.abilityID matches 6 run scoreboard players set @s icew.attCooldown 32
execute if score @s icew.abilityID matches 6 run function animated_java:ice_warrior/animations/crit_slash/play

#crit_slash
execute if score @s icew.abilityID matches 7 run scoreboard players set @s icew.attCooldown 47
execute if score @s icew.abilityID matches 7 run function animated_java:ice_warrior/animations/claw_ultimate/play

#keep at end of file
scoreboard players set @s icew.abilityID 0