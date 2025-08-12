function icewarrior:boss/stop_walking
execute on vehicle run data modify entity @s Motion[0] set value 0.0d
execute on vehicle run data modify entity @s Motion[2] set value 0.0d

scoreboard players set @s icew.canAttack 0
scoreboard players set @s icew.attCooldown 4
scoreboard players set @s icew.lookTarget 0
scoreboard players set @s icew.combo 0

function animated_java:ice_warrior/variants/broken_armor/apply
particle block{block_state:"minecraft:packed_ice"} ~ ~-0.5 ~ 0.25 0.25 0.25 0 6 normal
tag @s add icew.broken_armor

playsound minecraft:entity.zombie.attack_wooden_door hostile @a[distance=..16] ~ ~ ~ 4 2
playsound minecraft:block.glass.break hostile @a[distance=..16] ~ ~ ~ 4 0

particle crit ^ ^ ^2 0 0 0 0 1 normal

execute on vehicle run function icewarrior:boss/effects/p2_debuff

function animated_java:ice_warrior/animations/switch_phase2/play

scoreboard players set @s icew.phase 2