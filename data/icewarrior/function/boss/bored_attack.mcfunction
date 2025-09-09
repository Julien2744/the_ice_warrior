#above_slash
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 0 positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:9}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 0 positioned ^ ^ ^0.5 positioned ~ ~2.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:9}

#downward_slash
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 0 positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:10}

#need testing
#trident_above
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1 positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:9}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1 positioned ^ ^ ^0.5 positioned ~ ~2.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:9}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1 positioned ^ ^ ^0.5 positioned ~ ~3.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:9}

#trident_downard
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1 positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:10}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1 positioned ~ ~-6 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:10}


#launch to target
execute if score @s icew.attCooldown matches -20 run function icewarrior:boss/execute_attack_p0 {ID:8}