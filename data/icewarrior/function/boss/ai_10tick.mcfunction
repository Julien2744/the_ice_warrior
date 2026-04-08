## this is executed every 10 tick to increase performance

#check death
execute unless entity @s[predicate=icewarrior:check_hitbox] if score @s icew.death matches 0 run function icewarrior:boss/death/begin_death

#during entrance, check if boss has stopped falling
execute if score @s icew.entranceId matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/anim/stopped_falling

#combo detector
execute if score @s icew.phase matches 0 if score @s icew.combo = #icew.config icew.config.phase1_combo run function icewarrior:boss/effects/phase0_combo_reached
execute if score @s icew.phase matches 1..2 if score @s icew.combo = #icew.config icew.config.phase2_combo run function icewarrior:boss/effects/phase1_combo_reached
execute if score @s[tag=!icew.iceclaw] icew.phase matches 3 if score @s icew.combo >= #icew.config icew.config.phase3_combo if score @s icew.combo matches ..998 run function icewarrior:boss/effects/master_combo_reached

execute if score @s icew.phase matches 1..2 if score @s icew.combo matches 999.. run particle snowflake ~ ~-1.65 ~ 0.5 0.0 0.5 0 1 normal
execute if score @s icew.phase matches 3 if score @s icew.combo matches 999.. run particle snowflake ~ ~-0.75 ~ 0.3 0.5 0.3 0 6

#nerf the boss if hes in warm biome
execute unless entity @s[nbt={attributes:[{id:"minecraft:generic.armor",modifiers:[{id:"minecraft:icew.warm_biome_nerf"}]}]}] if biome ~ ~-1 ~ #snow_golem_melts on vehicle run attribute @s generic.armor modifier add icew.warm_biome_nerf -3 add_value
execute if entity @s[nbt={attributes:[{id:"minecraft:generic.armor",modifiers:[{id:"minecraft:icew.warm_biome_nerf"}]}]}] unless biome ~ ~-1 ~ #snow_golem_melts on vehicle run attribute @s generic.armor modifier remove icew.warm_biome_nerf

#use the rotation of the mob-hitbox if no target
execute if score @s[tag=!icew.launchToTarget] icew.lookTarget matches 1 unless entity @n[tag=icew.target,distance=..16] run execute positioned ~ ~-1 ~ rotated as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..1] run tp @s ~ ~ ~ ~ 0

#phase 1 regen if there no target
execute if score #icew.config icew.config.boss_regen matches 1 if score @s icew.phase matches 1 if entity @s[tag=!icew.enraged] unless entity @n[tag=icew.target,distance=..64] if score @s icew.health_pour matches 1..99 if score @s icew.attCooldown matches -20..0 run function icewarrior:boss/effects/boss10t_regen

#master regen if in cold biome
execute if score #icew.config icew.config.boss_regen matches 1 if score @s icew.phase matches 3 if biome ~ ~-1 ~ #spawns_cold_variant_frogs if score @s icew.health_pour matches 1..99 if score @s icew.attCooldown matches -20..0 if predicate icewarrior:random_35 run function icewarrior:boss/effects/boss10t_regen

#master can change weapon cooldown
execute if score @s icew.canAttack matches 1 unless score @s icew.p3_change_weapon matches 0 if score @s icew.phase matches 3 run scoreboard players remove @s icew.p3_change_weapon 1 