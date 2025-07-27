# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

$say test p2 - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p1 {ID:}

function icewarrior:boss/stop_walking

#trident_slash
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.attCooldown 46
execute if score @s icew.abilityID matches 1 run function animated_java:ice_warrior/animations/trident_slash/play

#trident_long
execute if score @s icew.abilityID matches 2 run scoreboard players set @s icew.attCooldown 90
execute if score @s icew.abilityID matches 2 run function animated_java:ice_warrior/animations/trident_long/play

#trdient_smash
execute if score @s icew.abilityID matches 3 run scoreboard players set @s icew.attCooldown 60
execute if score @s icew.abilityID matches 3 run function animated_java:ice_warrior/animations/trident_smash/play

#trdient_smash
execute if score @s icew.abilityID matches 4 run scoreboard players set @s icew.attCooldown 50
execute if score @s icew.abilityID matches 4 run function animated_java:ice_warrior/animations/trident_upper/play

#keep at end of file
scoreboard players set @s icew.abilityID 0