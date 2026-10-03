#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 3 ATTACKS -- ##

#master_ult
execute if score @s icew.combo matches 999.. run \
        return run function icewarrior:boss/execute_attack_p3 {ID:9,cooldown:110}

#master_parry
execute if entity @s[tag=icew.will_parry,tag=!icew.launchToTarget] run \
    return run function icewarrior:boss/execute_attack_p3 {ID:4,cooldown:35}

#normal_ultimate
execute if score @s icew.combo matches 4..999 positioned ^ ^ ^1 \
    if entity @n[tag=icew.target,distance=..1.5] \
    if predicate icewarrior:random/15 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:6,cooldown:30}

#master_trident_slash
execute positioned ^ ^ ^0.5 \
    if entity @n[tag=icew.target,distance=..2.75] \
    if predicate icewarrior:random/35 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:1,cooldown:70}

#master_upper_dash
execute if entity @n[tag=icew.target,distance=6..32] \
    if predicate icewarrior:random/15 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:5,cooldown:34}

#master_trident_crit
execute if entity @n[tag=icew.target,distance=16..42] \
    if predicate icewarrior:random/5 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:7,cooldown:86}

#break_ice (regen)
execute if score #icew.config icew.config.boss_regen matches 1 \
    if score @s icew.health_pour matches 1..100 \
    if block ^1 ^ ^ #ice \
    if predicate icewarrior:random/8 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:8,cooldown:20}

#master_change_iceclaw
execute if score @s icew.p3_change_weapon matches 0 \
    if predicate icewarrior:random/5 run \
        return run function icewarrior:boss/execute_attack_p3 {ID:10,cooldown:40}

#bored attack
execute if score @s icew.attCooldown matches -20 positioned as @s run \
    function icewarrior:boss/bored_attack