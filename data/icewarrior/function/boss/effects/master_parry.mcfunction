execute positioned ~ ~-0.75 ~ run particle minecraft:electric_spark ^ ^ ^1 0 0 0 0.25 10 normal
playsound minecraft:block.anvil.land hostile @a[distance=..32] ~ ~ ~ 6 2

scoreboard players add @s icew.combo 1

scoreboard players set @s icew.attCooldown 57
function animated_java:ice_warrior/animations/master_parry/stop
function animated_java:ice_warrior/animations/master_parry_slash/play