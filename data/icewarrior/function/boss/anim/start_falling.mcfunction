scoreboard players set @s icew.entranceId 1
scoreboard players set @s icew.canAttack 0
scoreboard players set @s icew.lookTarget 0

execute on vehicle run data modify entity @s Invulnerable set value 1b

execute if score @s icew.phase matches 0 run function animated_java:ice_warrior/animations/start_falling/play
execute if score @s icew.phase matches 3 run function animated_java:ice_warrior/animations/master_entrance_start/play

execute on vehicle run effect give @s slowness infinite 5 true