scoreboard players set @s icew.entranceId 1
scoreboard players set @s icew.canAttack 0
scoreboard players set @s icew.lookTarget 0
function animated_java:ice_warrior/animations/start_falling/play
execute on vehicle run effect give @s slowness infinite 5 true