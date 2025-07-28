function icewarrior:boss/stop_walking

scoreboard players set @s icew.attCooldown 4
scoreboard players set @s icew.canAttack 0

playsound minecraft:entity.pillager.ambient hostile @a[distance=..64] ~ ~ ~ 4 0

execute on vehicle run function icewarrior:boss/effects/trident_buff

function animated_java:ice_warrior/animations/switch_trident/play

scoreboard players set @s icew.phase 1