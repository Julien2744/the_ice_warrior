execute if score @s icew.phase matches 0 \
    positioned as @s positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 \
    if entity @e[type=#icewarrior:can_parry,dx=1,dy=1.75,dz=1,tag=!icew.immune,tag=!icew.parry,nbt=!{inGround:1b},limit=1] run \
        return run function icewarrior:boss/execute_attack_p0 {ID:1,cooldown:22}

execute if score @s icew.phase matches 1..2 \
    if score @s icew.combo matches 999.. positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 \
    if entity @n[type=#icewarrior:can_parry,tag=!icew.parry,nbt=!{inGround:1b},distance=..1.25] run \
        return run function icewarrior:boss/execute_attack_p1 {ID:7,cooldown:22}

execute if score @s icew.phase matches 3 if entity @s[tag=!icew.launchToTarget,tag=icew.iceclaw] \
    positioned as @s positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 \
    if entity @e[type=#icewarrior:can_parry,dx=1,dy=1.75,dz=1,tag=!icew.immune,tag=!icew.parry,nbt=!{inGround:1b},limit=1] run \
        return run function icewarrior:boss/execute_attack_p0 {ID:1,cooldown:22}