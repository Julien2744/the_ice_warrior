#99% of target bugs come here
execute if entity @s[predicate=icewarrior:check_hitbox] run function icewarrior:boss/target_tick

#check if the boss was hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] at @s run function icewarrior:boss/hurt

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s icew.health run execute on vehicle run data get entity @s Health
execute if score #icew.config icew.config.bossbar matches 0 run function icewarrior:boss/refresh_bossbar

#attack
#special
execute if entity @s[tag=icew.launchToTarget] if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 3 run function icewarrior:boss/attacks/master_upper_dash_check
#phase 0
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if entity @n[tag=icew.target,distance=..24] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p0
#phase 1 & 2
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..2 if entity @n[tag=icew.target,distance=..24] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p1
#phase 3 (master)
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 3 if entity @n[tag=icew.target,distance=..24] if entity @s[tag=!icew.launchToTarget] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p3

#cooldown
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 unless biome ~ ~-1 ~ #snow_golem_melts run scoreboard players remove @s icew.attCooldown 1
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if biome ~ ~-1 ~ #snow_golem_melts run execute unless predicate icewarrior:random_25 run scoreboard players remove @s icew.attCooldown 1
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..3 run scoreboard players remove @s icew.attCooldown 1
#boredom cooldown (make the boss use special ability if he just stand here and do nothing while having a target
execute if entity @e[tag=icew.target,distance=..8,limit=1] if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -19..0 if score @s icew.walking matches 0 on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run scoreboard players remove @s icew.attCooldown 1

#walking anim motor
execute if score @s icew.attCooldown matches -20..0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking_motor
#walking anim (phase 0)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking
#walking anim (phase 1&2&3)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..3 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking_p1
#walking anim when attacking
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.forceWalk matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking_forced

#look at target
execute if score @s icew.lookTarget matches 1 if entity @n[tag=icew.target,distance=..16] run execute facing entity @n[tag=icew.target,distance=..16] eyes run tp @s ~ ~ ~ ~ 0