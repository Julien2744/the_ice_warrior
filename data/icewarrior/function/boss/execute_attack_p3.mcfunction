# The reason this exist is to prevent the delay when calling the animation function and the abilitiCooldown

$scoreboard players set @s icew.abilityID $(ID)

$scoreboard players set @s icew.attCooldown $(cooldown)

#$say test p3 - $(ID)
#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run function icewarrior:boss/execute_attack_p3 {ID:}

function icewarrior:boss/stop_walking

#master_trident_slash
execute if score @s icew.abilityID matches 1 run scoreboard players set @s icew.forceWalk 1
execute if score @s icew.abilityID matches 1 run return run function aj:ice_warrior/animations/master_trident_slash/play

#master_trident_slash_poke
execute if score @s icew.abilityID matches 2 run scoreboard players set @s icew.forceWalk 0
execute if score @s icew.abilityID matches 2 run function aj:ice_warrior/animations/master_trident_slash/stop
execute if score @s icew.abilityID matches 2 run return run function aj:ice_warrior/animations/master_trident_slash_poke/play

#master_trident_slash_mace
execute if score @s icew.abilityID matches 3 run function aj:ice_warrior/animations/master_trident_slash/stop
execute if score @s icew.abilityID matches 3 run return run function aj:ice_warrior/animations/master_trident_slash_mace/play

#master_parry
execute if score @s icew.abilityID matches 4 run tag @s remove icew.will_parry
execute if score @s icew.abilityID matches 4 run return run function aj:ice_warrior/animations/master_parry/play

#master_upper_dash
execute if score @s icew.abilityID matches 5 run return run function aj:ice_warrior/animations/master_upper_dash/play

#master_upper_dash_end
execute if score @s icew.abilityID matches 6 run tag @s remove icew.launchToTarget
execute if score @s icew.abilityID matches 6 run return run function aj:ice_warrior/animations/master_upper_dash_end/play

#master_trident_crit
execute if score @s icew.abilityID matches 7 run return run function aj:ice_warrior/animations/master_trident_crit/play

#break_ice
execute if score @s icew.abilityID matches 8 run scoreboard players set @s icew.lookTarget 0
execute if score @s icew.abilityID matches 8 run return run function aj:ice_warrior/animations/break_ice/play

#master_ultimate
execute if score @s icew.abilityID matches 9 run return run function aj:ice_warrior/animations/master_ultimate/play

#master_change_iceclaw
execute if score @s icew.abilityID matches 10 run tag @s add icew.iceclaw
execute if score @s icew.abilityID matches 10 run return run function aj:ice_warrior/animations/master_change_iceclaw/play

#master_upper_claw
execute if score @s icew.abilityID matches 11 run return run function aj:ice_warrior/animations/master_upper_claw/play

#master_claw_slash
execute if score @s icew.abilityID matches 12 run scoreboard players set @s icew.forceWalk 1
execute if score @s icew.abilityID matches 12 run return run function aj:ice_warrior/animations/master_claw_slash/play

#go back to trident
execute if score @s icew.abilityID matches 13 run scoreboard players set @s icew.canAttack 0
execute if score @s icew.abilityID matches 13 run playsound minecraft:entity.pillager.ambient hostile @a[distance=..64] ~ ~ ~ 4 0
execute if score @s icew.abilityID matches 13 run return run function aj:ice_warrior/animations/switch_trident/play

#keep at end of file
#scoreboard players set @s icew.abilityID 0