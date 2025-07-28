scoreboard players set @s icew.death 1
scoreboard players set @s icew.canAttack 0
scoreboard players set @s icew.attCooldown 2
function icewarrior:boss/death/stop_all_anim

particle minecraft:damage_indicator ~ ~-1 ~ 0 0 0 0.5 5 normal
particle minecraft:snowflake ~ ~-0.75 ~ 0 0 0 0.1 10 normal
playsound minecraft:entity.vindicator.hurt hostile @a[distance=..16] ~ ~ ~ 2 0
playsound minecraft:entity.vindicator.death hostile @a[distance=..16] ~ ~ ~ 2 0

function animated_java:ice_warrior/animations/death/play