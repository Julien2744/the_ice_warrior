function icewarrior:boss/attacks/trident_slash
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 unless entity @n[tag=icew.target,distance=..2] run function animated_java:ice_warrior/animations/trident_slash/stop
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 unless entity @n[tag=icew.target,distance=..2] run function animated_java:ice_warrior/animations/miss_bottom_right/play