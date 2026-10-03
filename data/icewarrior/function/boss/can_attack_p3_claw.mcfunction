### TO OPTIMISE ###

#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 3 ATTACKS ONLY FOR ICE CLAW -- ##

#claw_ultimate
execute if score @s icew.combo matches 3.. \
    if entity @e[tag=icew.target,distance=..2.5,limit=1] \
    if predicate icewarrior:random/15 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:7,cooldown:83}

#master_claw_slash
execute positioned ^ ^ ^0.8 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/35 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:12,cooldown:65}

#crit_slash
execute positioned ^ ^ ^0.8 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/30 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:6,cooldown:32}

#master_upper_claw
execute if entity @n[tag=icew.target,distance=8..42] \
    if predicate icewarrior:random/15 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:11,cooldown:65}

#change back to trident
execute if score @s icew.p3_change_weapon matches 0 \
    if predicate icewarrior:random/5 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:13,cooldown:4}

#bored attack
execute if score @s icew.attCooldown matches -20 positioned as @s run function icewarrior:boss/bored_attack