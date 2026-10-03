### TO OPTIMISE ###
# predicate check grounded

#master_upper_dash_end
execute positioned ~ ~-2.5 ~ if entity @n[tag=icew.target,distance=..2] run \
    return run function icewarrior:boss/execute_attack_p3 {ID:6,cooldown:30}

execute if predicate icewarrior:is_grounded run \
        scoreboard players set @s icew.lookTarget 1

execute if predicate icewarrior:is_grounded run tag @s remove icew.launchToTarget