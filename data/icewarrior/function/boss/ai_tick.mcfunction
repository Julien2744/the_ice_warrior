#99% of target bugs come here
execute if entity @s[predicate=icewarrior:check_hitbox] run function icewarrior:boss/target_tick

#check if the boss was hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] at @s run function icewarrior:boss/hurt

# #refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
# execute store result score @s icew.health on vehicle run data get entity @s Health
# execute if score #icew.config icew.config.bossbar matches 1 run function icewarrior:boss/refresh_bossbar

## attack -- speciak
## phase 3 uppder dash attack
execute if entity @s[tag=icew.launchToTarget] \
    if score @s icew.attCooldown matches -20..0 \
    if score @s icew.phase matches 3 run \
        function icewarrior:boss/attacks/master_upper_dash_check
## parry
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 \
    if entity @e[distance=..8,type=#icewarrior:can_parry,nbt=!{inGround:1b},limit=1] run \
        function icewarrior:boss/parry_check_tick

#main tick
#execute if score @s icew.canAttack matches 1 run function icewarrior:boss/attack_tick
execute if score @s icew.canAttack matches 1 run function icewarrior:boss/attack_cooldown_tick

#boredom cooldown (make the boss use special ability if he just stand here and do nothing while having a target
execute if entity @e[tag=icew.target,distance=..8,limit=1] \
    if score @s icew.canAttack matches 1 \
    if score @s icew.attCooldown matches -19..0 \
    if score @s icew.walking matches 0 \
    if predicate icewarrior:is_grounded run \
        scoreboard players remove @s icew.attCooldown 1
##

#walking anim motor
execute if score @s icew.attCooldown matches -20..0 if predicate icewarrior:is_grounded run \
    function icewarrior:boss/anim/walking/motor
# forced walinh
# walking anim while attacking
execute if score @s icew.forceWalk matches 1 if predicate icewarrior:is_grounded \
    unless entity @s[tag=aj.ice_warrior.animation.walking_forced.playing] run \
    function icewarrior:boss/anim/walking/forced_anim

#look at target
execute if score @s icew.lookTarget matches 1 if entity @n[tag=icew.target,distance=..24] \
    facing entity @n[tag=icew.target,distance=..24] eyes run rotate @s ~ 0