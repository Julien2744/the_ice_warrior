## this is executed every 10 tick to increase performance

#check death
execute unless entity @s[predicate=icewarrior:check_hitbox] \
    if score @s icew.death matches 0 run function icewarrior:boss/death/begin_death

# combo particle vfx
execute if score @s icew.phase matches 1..2 if score @s icew.combo matches 999.. run particle snowflake ~ ~-1.65 ~ 0.5 0.0 0.5 0 1 normal
execute if score @s icew.phase matches 3 if score @s icew.combo matches 999.. run particle snowflake ~ ~-0.75 ~ 0.3 0.5 0.3 0 6

#use the rotation of the mob-hitbox if no target
execute if score @s[tag=!icew.launchToTarget] icew.lookTarget matches 1 \
    unless entity @n[tag=icew.target,distance=..16] positioned ~ ~-1 ~ \
    rotated as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..1] run \
        rotate @s ~ 0

#phase 1 regen if there no target
execute if score #icew.config icew.config.boss_regen matches 1 \
    if score @s icew.phase matches 1 \
    if entity @s[tag=!icew.enraged] \
    unless entity @n[tag=icew.target,distance=..64] \
    if score @s icew.health_pour matches 1..99 \
    if score @s icew.attCooldown matches -20..0 run \
        function icewarrior:boss/effects/boss10t_regen

#master can change weapon cooldown
execute if score @s icew.canAttack matches 1 \
    unless score @s icew.p3_change_weapon matches 0 \
    if score @s icew.phase matches 3 run \
        scoreboard players remove @s icew.p3_change_weapon 1

#during entrance, check if boss has stopped falling
execute if score @s icew.entranceId matches 1 \
    if predicate icewarrior:is_grounded run function icewarrior:boss/anim/stopped_falling