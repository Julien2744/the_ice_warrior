## this is executed every 10 tick to increase performance

#check death
execute unless entity @s[predicate=icewarrior:check_hitbox] if score @s icew.death matches 0 run function icewarrior:boss/death/begin_death

#during entrance, check if boss has stopped falling
execute if score @s icew.entranceId matches 1 run execute on vehicle if entity @s[nbt={OnGround:1b}] run execute on passengers run function icewarrior:boss/anim/stopped_falling

#nerf the boss if hes in warm biome
execute if biome ~ ~-1 ~ #snow_golem_melts run execute on vehicle if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run effect give @s slowness 7 1

#use the rotation of the mob-hitbox if no target
execute if score @s icew.lookTarget matches 1 unless entity @n[tag=icew.target,distance=..16] run execute positioned ~ ~-1 ~ rotated as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..1] run tp @s ~ ~ ~ ~ 0

#phase 2 regen if there no target
execute if score @s icew.phase matches 1 if entity @s[tag=!icew.enraged] unless entity @n[tag=icew.target,distance=..64] if score @s icew.health_pour matches 1..100 if score @s icew.attCooldown matches 0 run function icewarrior:boss/effects/phase1_regen
