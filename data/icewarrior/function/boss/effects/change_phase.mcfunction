function icewarrior:boss/stop_walking
scoreboard players set @s icew.attCooldown 37
scoreboard players set @s icew.canAttack 0
playsound minecraft:entity.pillager.ambient hostile @a[distance=..64] ~ ~ ~ 4 0
function animated_java:ice_warrior/animations/switch_trident/play
scoreboard players set @s icew.phase 1