# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

$scoreboard players set @s icew.attCooldown $(cooldown)

#$say test p0 - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p0 {ID:}

function icewarrior:boss/stop_walking

#parry
execute if score @s icew.abilityID matches 1 run function icewarrior:boss/attacks/parry
execute if score @s icew.abilityID matches 1 run return run function aj:ice_warrior/animations/parry/play

#regular_double_slash
execute if score @s icew.abilityID matches 2 run return run function aj:ice_warrior/animations/regular_double_slash/play

#high_slash
execute if score @s icew.abilityID matches 3 run return run function aj:ice_warrior/animations/high_slash/play

#long_claw
execute if score @s icew.abilityID matches 4 run return run function aj:ice_warrior/animations/long_claw/play

#foward_slash
execute if score @s icew.abilityID matches 5 run return run function aj:ice_warrior/animations/foward_slash/play

#crit_slash
execute if score @s icew.abilityID matches 6 run return run function aj:ice_warrior/animations/crit_slash/play

#crit_slash
execute if score @s icew.abilityID matches 7 run return run function aj:ice_warrior/animations/claw_ultimate/play

#launch to target
execute if score @s icew.abilityID matches 8 run return run function icewarrior:boss/effects/launch_to_target

#above_slash
execute if score @s icew.abilityID matches 9 run return run function aj:ice_warrior/animations/above_slash/play

#downward_slash
execute if score @s icew.abilityID matches 10 run return run function aj:ice_warrior/animations/downward_slash/play

#keep at end of file
#scoreboard players set @s icew.abilityID 0