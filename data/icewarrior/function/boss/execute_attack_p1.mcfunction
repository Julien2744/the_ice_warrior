# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

$say test p2 - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p0 {ID:}

function icewarrior:boss/stop_walking

#trident_slash
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.attCooldown 46
execute if score @s icew.abilityID matches 1 run function animated_java:ice_warrior/animations/trident_slash/play

#keep at end of file
scoreboard players set @s icew.abilityID 0