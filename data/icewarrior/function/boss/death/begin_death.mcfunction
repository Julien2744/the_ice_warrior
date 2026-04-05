scoreboard players set @s icew.death 1
scoreboard players set @s icew.lookTarget 0
scoreboard players set @s icew.canAttack 0
scoreboard players set @s icew.attCooldown 2
function icewarrior:boss/death/stop_all_anim

execute unless score @s icew.phase matches 3 run playsound minecraft:entity.vindicator.hurt hostile @a[distance=..16] ~ ~ ~ 2 0
execute unless score @s icew.phase matches 3 run playsound minecraft:entity.vindicator.death hostile @a[distance=..16] ~ ~ ~ 2 0

execute if score @s icew.phase matches 3 run playsound minecraft:block.glass.break hostile @a[distance=..24] ~ ~ ~ 6 0.75

execute unless score @s icew.phase matches 3 run function animated_java:ice_warrior/animations/death/play
execute if score @s icew.phase matches 3 run function animated_java:ice_warrior/animations/master_death/play