#99% of target bug come here
execute if entity @s[predicate=icewarrior:check_hitbox] run function icewarrior:boss/target_tick

#check if the boss was hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] at @s run function icewarrior:boss/hurt

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s icew.health run execute on vehicle run data get entity @s Health
execute if score #icew.config icew.config.bossbar matches 0 run execute store result bossbar icew_bossbar value run scoreboard players get @s icew.health
execute if score #icew.config icew.config.bossbar matches 0 if entity @s[tag=!icew.broken_armor,tag=!icew.master] run bossbar set icew_bossbar name [{"text":"Ice Warrior","color":"aqua"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"icew.health"},"color":"red"},{"text":"❤","color":"dark_red"}]
execute if score #icew.config icew.config.bossbar matches 0 if entity @s[tag=icew.broken_armor] run bossbar set icew_bossbar name [{"text":"Ice Warrior","color":"aqua"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"icew.health"},"color":"red"},{"text":"💔","color":"dark_red"}]
execute if score #icew.config icew.config.bossbar matches 0 if entity @s[tag=icew.master] run bossbar set icew_bossbar name [{"text":"The Ice Warrior","color":"#9FC0FA"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"icew.health"},"color":"#9FC0FA"},{"text":"❄"}]

#change from phase0 to phase1
execute unless score @s icew.health_pour matches 0 if score @s icew.canAttack matches 1 if score #icew.config icew.config.can_change_phase matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if score @s icew.health_pour <= #icew.config icew.config.change_phase run function icewarrior:boss/effects/change_phase
#change from phase1 to phase2 (if enraged)
execute unless score @s icew.health_pour matches 0 if entity @s[tag=icew.enraged] if score @s icew.canAttack matches 1 if score #icew.config icew.config.can_change_phase matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1 if score @s icew.health_pour <= #icew.config icew.config.change_phase run function icewarrior:boss/effects/change_to_phase2

#attack
#phase 0
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if entity @n[tag=icew.target,distance=..24] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p0
#phase 1 & 2
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..2 if entity @n[tag=icew.target,distance=..24] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p1

#cooldown
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 unless biome ~ ~-1 ~ #snow_golem_melts run scoreboard players remove @s icew.attCooldown 1
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if biome ~ ~-1 ~ #snow_golem_melts run execute unless predicate icewarrior:random_25 run scoreboard players remove @s icew.attCooldown 1
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..2 run scoreboard players remove @s icew.attCooldown 1
#boredom cooldown (make the boss use special ability if he just stand here and do nothing while having a target
execute if entity @e[tag=icew.target,distance=..8,limit=1] run execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -19..0 run execute if score @s icew.walking matches 0 on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run scoreboard players remove @s icew.attCooldown 1

#combo detector
execute if score @s icew.phase matches 0 if score @s icew.combo = #icew.config icew.config.phase1_combo run function icewarrior:boss/effects/phase0_combo_reached
execute if score @s icew.phase matches 1..2 if score @s icew.combo = #icew.config icew.config.phase2_combo run function icewarrior:boss/effects/phase1_combo_reached
execute if score @s icew.phase matches 1..2 if score @s icew.combo matches 999.. run execute on vehicle at @s run particle snowflake ~ ~ ~ 0.5 0.0 0.5 0 1 normal

#walking anim motor
execute if score @s icew.attCooldown matches -20..0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking_motor
#walking anim (phase 0)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking
#walking anim (phase 1&2)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..2 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking_p1
#walking anim when attacking
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.forceWalk matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/walking_forced

#look at target
execute if score @s icew.lookTarget matches 1 if entity @n[tag=icew.target,distance=..16] run execute facing entity @n[tag=icew.target,distance=..16] eyes run tp @s ~ ~ ~ ~ 0