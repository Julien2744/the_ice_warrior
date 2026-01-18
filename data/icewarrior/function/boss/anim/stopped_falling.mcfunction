scoreboard players set @s icew.entranceId 2
execute if score @s icew.phase matches 0 run function animated_java:ice_warrior/animations/stopped_falling/play
execute if score @s icew.phase matches 3 run function animated_java:ice_warrior/animations/master_entrance_end/play