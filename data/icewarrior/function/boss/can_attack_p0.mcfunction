### TO OPTIMISE ###

#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 0 ATTACKS -- ##
#ultimate
execute if score @s icew.combo matches 999.. \
    if entity @e[tag=icew.target,distance=..2.5,limit=1] run \
        return run function icewarrior:boss/execute_attack_p0 {ID:7,cooldown:88}
#fix ultimate display not refreshing \
    if the second att of the anim failed to hit
execute if score @s icew.combo matches 0 \
    if data entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" run \
        data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b
execute if score @s icew.combo matches 0 \
    if data entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" run \
        data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b

#change from phase0 to phase1
execute unless score @s icew.combo matches 999.. \
    if score #icew.config icew.config.can_change_phase matches 1 \
    if score @s icew.health_pour <= #icew.config icew.config.change_phase run \
        return run function icewarrior:boss/effects/change_phase

#regular_double_slash
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^0.8 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/30 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:2,cooldown:40}

#high_slash
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^0.8 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:3,cooldown:31}

#foward_slash
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^1 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/30 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:5,cooldown:37}

#long_claw
execute unless score @s icew.combo matches 999.. positioned as @s \
    if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^5 \
    if entity @e[tag=icew.target,distance=..1.25,limit=1] \
    if predicate icewarrior:random/15 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:4,cooldown:33}
execute unless score @s icew.combo matches 999.. positioned as @s \
    if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^6 \
    if entity @e[tag=icew.target,distance=..1.25,limit=1] \
    if predicate icewarrior:random/15 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:4,cooldown:33}
execute unless score @s icew.combo matches 999.. positioned as @s \
    if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^7 \
    if entity @e[tag=icew.target,distance=..1.25,limit=1] \
    if predicate icewarrior:random/25 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:4,cooldown:33}

#crit_slash
execute unless score @s icew.combo matches 999.. positioned ^ ^ ^0.8 \
    if entity @e[tag=icew.target,distance=..1.75,limit=1] \
    if predicate icewarrior:random/30 run \
        return run function icewarrior:boss/execute_attack_p0 {ID:6,cooldown:32}

#bored attack
execute if score @s icew.attCooldown matches -20 positioned as @s run function icewarrior:boss/bored_attack