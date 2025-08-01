#check death
execute unless entity @s[predicate=icewarrior:check_hitbox] if score @s icew.death matches 0 run function icewarrior:boss/death/begin_death

#auto-target using the hitbox mob target
execute if entity @s[predicate=icewarrior:check_hitbox] unless entity @n[tag=icew.target,distance=..128] run execute on vehicle at @s on target run execute if entity @s[tag=!icew.immune] run function icewarrior:set_target
#auto-target by checking entity around
execute if entity @s[predicate=icewarrior:check_hitbox] unless entity @n[tag=icew.target,distance=..128] run execute if entity @n[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..64] run execute on vehicle if entity @s[nbt={HurtTime:0s}] unless entity @s[tag=icew.aggro_dmg] run function icewarrior:boss/aggro_boss
#fix mob-hibox being able to damage mobs
execute if entity @s[predicate=icewarrior:check_hitbox] if entity @n[type=!#icewarrior:non_living,tag=icew.target,tag=!icew.immune,distance=..75] run execute on vehicle if entity @s[nbt={HurtTime:0s}] unless entity @s[tag=icew.aggro_dmg] run function icewarrior:boss/auto_disable_followrange
#re give the mob-hitbox his follow range if there no target
execute if entity @s[predicate=icewarrior:check_hitbox] unless entity @n[tag=icew.target,distance=..128] unless entity @n[tag=icew.immune,tag=!icew.hitbox,distance=..8] run execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",base:0.0}]}] run data merge entity @s {attributes:[{id:"minecraft:generic.follow_range",base:75}]}

#check if the boss was hurt
execute on vehicle if entity @s[nbt={HurtTime:9s}] at @s run function icewarrior:boss/hurt

#during entrance, check if boss has stopped falling
execute if score @s icew.entranceId matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/anim/stopped_falling

#nerf the boss if hes in warm biome
execute if biome ~ ~-1 ~ #snow_golem_melts run execute on vehicle if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect give @s slowness 7 1

#refresh boss health bar (excluded from hurt because of regen and not updated when the boss die)
execute store result score @s icew.health run execute on vehicle run data get entity @s Health
execute store result bossbar icew_bossbar value run scoreboard players get @s icew.health
bossbar set icew_bossbar name [{"text":"Ice Warrior","color":"aqua"},{"text":" - ","color":"gray"},{"score":{"name":"@s","objective":"icew.health"},"color":"red"},{"text":"❤","color":"dark_red"}]

#change phase
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if score @s icew.health_pour matches 1..50 run function icewarrior:boss/effects/change_phase

#attack
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if entity @n[tag=icew.target,distance=..128] run function icewarrior:boss/can_attack_p0
execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1 if entity @n[tag=icew.target,distance=..128] run function icewarrior:boss/can_attack_p1

#cooldown
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 unless biome ~ ~-1 ~ #snow_golem_melts run scoreboard players remove @s icew.attCooldown 1
execute if score @s icew.canAttack matches 1 unless score @s icew.attCooldown matches -20..0 if biome ~ ~-1 ~ #snow_golem_melts if score @s icew.phase matches 0 run execute unless predicate icewarrior:random_25 run scoreboard players remove @s icew.attCooldown 1
#boredom cooldown (make the boss use special ability if he just stand here and do nothing while having a target
execute if entity @n[tag=icew.target,distance=..8] run execute if score @s icew.canAttack matches 1 if score @s icew.attCooldown matches -19..0 run execute if score @s icew.walking matches 0 on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run scoreboard players remove @s icew.attCooldown 1

#combo detector
execute if score @s icew.phase matches 0 if score @s icew.combo matches 7..64 run function icewarrior:boss/effects/phase0_combo_reached
execute if score @s icew.phase matches 1 if score @s icew.combo matches 5..64 run function icewarrior:boss/effects/phase1_combo_reached
execute if score @s icew.phase matches 1 if score @s icew.combo matches 999.. run execute on vehicle at @s run particle snowflake ~ ~ ~ 0.5 0.0 0.5 0 1 normal

#walking anim motor
execute if score @s icew.attCooldown matches -20..0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/walking_motor
#walking anim (phase 0)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/walking
#walking anim (phase 1)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/walking_p1
#walking anim when attacking
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.forceWalk matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/walking_forced

#look at target
execute if score @s icew.lookTarget matches 1 if entity @n[tag=icew.target,distance=..16] run execute facing entity @n[tag=icew.target,distance=..16] eyes run tp @s ~ ~ ~ ~ 0
#use the rotation of the mob-hitbox if no target
execute if score @s icew.lookTarget matches 1 unless entity @n[tag=icew.target,distance=..16] run execute positioned ~ ~-1 ~ rotated as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..1] run tp @s ~ ~ ~ ~ 0