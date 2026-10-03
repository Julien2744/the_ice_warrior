execute if score @s icew.phase matches 1 \
    positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 \
    unless entity @n[tag=icew.target,distance=..2.25] run function aj:ice_warrior/animations/trident_long/stop
execute if score @s icew.phase matches 1 \
    positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 \
    unless entity @n[tag=icew.target,distance=..2.25] run function aj:ice_warrior/animations/miss_trident_long/play