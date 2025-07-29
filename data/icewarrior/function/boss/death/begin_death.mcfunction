scoreboard players set @s icew.death 1
scoreboard players set @s icew.lookTarget 0
scoreboard players set @s icew.canAttack 0
scoreboard players set @s icew.attCooldown 2
function icewarrior:boss/death/stop_all_anim

playsound minecraft:entity.vindicator.hurt hostile @a[distance=..16] ~ ~ ~ 2 0
playsound minecraft:entity.vindicator.death hostile @a[distance=..16] ~ ~ ~ 2 0

function animated_java:ice_warrior/animations/death/play