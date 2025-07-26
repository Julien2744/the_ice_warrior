function icewarrior:boss/stop_walking
execute on vehicle run data modify entity @s Invulnerable set value 1b
scoreboard players set @s icew.attCooldown 4
scoreboard players set @s icew.canAttack 0
playsound minecraft:entity.pillager.ambient hostile @a[distance=..64] ~ ~ ~ 4 0
function animated_java:ice_warrior/animations/switch_trident/play
scoreboard players set @s icew.phase 1