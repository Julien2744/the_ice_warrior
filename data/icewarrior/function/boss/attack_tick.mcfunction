#phase 0
execute if score @s icew.phase matches 0 \
    if entity @n[tag=icew.target,distance=..24] \
    positioned ~ ~-1.5 ~ run return run function icewarrior:boss/can_attack_p0

#phase 1 & 2
execute if score @s icew.phase matches 1..2 \
    if entity @n[tag=icew.target,distance=..24] \
    positioned ~ ~-1.5 ~ run return run function icewarrior:boss/can_attack_p1

#phase 3 (master)
execute if score @s icew.phase matches 3 \
    if entity @n[tag=icew.target,distance=..42] \
    if entity @s[tag=!icew.launchToTarget,tag=!icew.iceclaw] \
    positioned ~ ~-1.5 ~ run return run function icewarrior:boss/can_attack_p3

execute if score @s icew.phase matches 3 \
    if entity @n[tag=icew.target,distance=..42] \
    if entity @s[tag=!icew.launchToTarget,tag=icew.iceclaw] \
    positioned ~ ~-1.5 ~ run return run function icewarrior:boss/can_attack_p3_claw