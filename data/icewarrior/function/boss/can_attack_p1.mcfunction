#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 1 & 2 ATTACKS -- ##
#ultimate
execute if score @s icew.combo matches 999.. positioned ^ ^ ^1 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] run \
        return run function icewarrior:boss/execute_attack_p1 {ID:6,cooldown:54}

#launch
execute if score @s icew.combo matches 999.. positioned ^ ^ ^1 \
    if block ~ ~ ~ #minecraft:air \
    if entity @n[tag=icew.target,distance=3..20] \
    if predicate icewarrior:random/2 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:8,cooldown:17}
#fix ultimate display not refreshing \
    if the second att of the anim failed to hit
execute if score @s icew.combo matches 0 \
    if data entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" on vehicle run \
        attribute @s minecraft:movement_speed modifier remove icew.trident_ult_movement_speed
execute if score @s icew.combo matches 0 \
    if data entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" run \
        data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b

#change from phase1 to phase2 (if enraged)
execute if score @s icew.phase matches 1 \
    if entity @s[tag=icew.enraged] \
    if score #icew.config icew.config.can_change_phase matches 1 \
    if score @s icew.health_pour <= #icew.config icew.config.change_phase run \
        return run function icewarrior:boss/effects/change_to_phase2

#trdient_slash (phase 1)
execute if score @s icew.phase matches 1 unless score @s icew.combo matches 999.. positioned ^ ^ ^1.25 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/35 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:1,cooldown:46}
#trdient_slash (phase 2)
execute if score @s icew.phase matches 2 unless score @s icew.combo matches 999.. positioned ^ ^ ^1.25 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/35 run \
        return run function icewarrior:boss/execute_attack_p2 {ID:1,cooldown:46}

#trident_crit (only phase2)
execute if score @s icew.phase matches 2 unless score @s icew.combo matches 999.. positioned ^ ^ ^1.5 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p2 {ID:3,cooldown:54}
execute if score @s icew.phase matches 2 unless score @s icew.combo matches 999.. positioned ^ ^ ^2 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p2 {ID:3,cooldown:54}

#trident_long
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^0.8 \
    if entity @e[tag=icew.target,distance=..1.25,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:2,cooldown:80}
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^1.8 \
    if entity @e[tag=icew.target,distance=..1.25,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:2,cooldown:80}
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^2.8 \
    if entity @e[tag=icew.target,distance=..1.25,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:2,cooldown:80}

#trdient_upper
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^1 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:4,cooldown:45}

#trdient_smash (phase 1)
execute if score @s icew.phase matches 1 unless score @s icew.combo matches 999.. positioned ^ ^ ^1.75 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:3,cooldown:54}
#trdient_smash (phase 2)
execute if score @s icew.phase matches 2 unless score @s icew.combo matches 999.. positioned ^ ^ ^1.75 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p2 {ID:2,cooldown:80}

#trident_launch
execute unless score @s icew.combo matches 999.. \
    if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^6.25 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:5,cooldown:50}
execute unless score @s icew.combo matches 999.. \
    if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^7.25 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:5,cooldown:50}
execute unless score @s icew.combo matches 999.. \
    if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^8.25 \
    if entity @e[tag=icew.target,distance=..1.5,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p1 {ID:5,cooldown:50}

#bored attack
execute if score @s icew.attCooldown matches -20 positioned as @s run \
    function icewarrior:boss/bored_attack