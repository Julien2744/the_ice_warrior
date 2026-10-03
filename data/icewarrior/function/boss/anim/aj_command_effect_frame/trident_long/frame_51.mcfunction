execute if score @s icew.phase matches 2 \
    if block ^ ^ ^0.75 #minecraft:air \
    on vehicle at @s rotated ~ 0 run tp ^ ^ ^0.75
function icewarrior:boss/attacks/trident_poke