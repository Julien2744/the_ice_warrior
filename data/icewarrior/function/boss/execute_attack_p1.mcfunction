# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

$scoreboard players set @s icew.attCooldown $(cooldown)

#$say test p1 - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p1 {ID:}

function icewarrior:boss/stop_walking

#trident_slash
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.forceWalk 1
execute if score @s icew.abilityID matches 1 run return run function aj:ice_warrior/animations/trident_slash/play

#trident_long
execute if score @s icew.abilityID matches 2 run scoreboard players set @s icew.forceWalk 1
execute if score @s icew.abilityID matches 2 run return run function aj:ice_warrior/animations/trident_long/play

#trdient_smash
execute if score @s icew.abilityID matches 3 run return run function aj:ice_warrior/animations/trident_smash/play

#trdient_upper
execute if score @s icew.abilityID matches 4 run return run function aj:ice_warrior/animations/trident_upper/play

#trdient_launch
execute if score @s icew.abilityID matches 5 run return run function aj:ice_warrior/animations/trident_launch/play

#trdient_ultimate
execute if score @s icew.abilityID matches 6 run return run function aj:ice_warrior/animations/trident_ultimate/play

#parry
execute if score @s icew.abilityID matches 7 run function icewarrior:boss/attacks/trident_ult_parry
execute if score @s icew.abilityID matches 7 run return run function aj:ice_warrior/animations/trident_ult_parry/play

#launch (ultimate)
execute if score @s icew.abilityID matches 8 run return run function icewarrior:boss/effects/launch_to_target

#trident_above
execute if score @s icew.abilityID matches 9 run return run function aj:ice_warrior/animations/trident_above/play

#trident_downward
execute if score @s icew.abilityID matches 10 run return run function aj:ice_warrior/animations/trident_downward/play

#keep at end of file
#scoreboard players set @s icew.abilityID 0