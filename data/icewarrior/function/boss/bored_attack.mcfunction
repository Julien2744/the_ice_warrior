#above_slash
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 0 positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:9}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 0 positioned ^ ^ ^0.5 positioned ~ ~2.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:9}

#downward_slash
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 0 positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:10}

#trident_above
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1..2 positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:9}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1..2 positioned ^ ^ ^0.5 positioned ~ ~2.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:9}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1..2 positioned ^ ^ ^0.5 positioned ~ ~3.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:9}

#trident_downard
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1..2 positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:10}
execute if score @s icew.attCooldown matches -20 if score @s icew.phase matches 1..2 positioned ~ ~-6 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p1 {ID:10}

#master_will_parry
execute if score @s[tag=!icew.will_parry,tag=!icew.iceclaw] icew.attCooldown matches -20 if score @s icew.phase matches 3 if entity @s[tag=!icew.will_parry,tag=!icew.master_parry] if entity @n[tag=icew.target,distance=..128] run execute if predicate icewarrior:random_35 run function icewarrior:boss/effects/will_parry_indicator

#master_upper_dash
execute if score @s[tag=!icew.will_parry,tag=!icew.iceclaw] icew.attCooldown matches -20 if score @s icew.phase matches 3 if entity @n[tag=icew.target,distance=..32] if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p3 {ID:5}

#master_trident_crit
execute if score @s[tag=!icew.will_parry,tag=!icew.iceclaw] icew.attCooldown matches -20 if score @s icew.phase matches 3 if entity @n[tag=icew.target,distance=..32] if predicate icewarrior:random_50 run function icewarrior:boss/execute_attack_p3 {ID:7}

#above_slash (master)
execute if score @s[tag=!icew.will_parry,tag=!icew.iceclaw] icew.attCooldown matches -20 if score @s icew.phase matches 3 positioned ^ ^ ^0.5 positioned ~ ~1.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:9}
execute if score @s[tag=!icew.will_parry,tag=!icew.iceclaw] icew.attCooldown matches -20 if score @s icew.phase matches 3 positioned ^ ^ ^0.5 positioned ~ ~2.5 ~ if entity @e[tag=icew.target,distance=..1,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:9}

#downward_slash (master)
execute if score @s[tag=!icew.will_parry,tag=!icew.iceclaw] icew.attCooldown matches -20 if score @s icew.phase matches 3 positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..1.5,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:10}

#launch to target
execute if score @s[tag=!icew.will_parry] icew.attCooldown matches -20 run function icewarrior:boss/execute_attack_p0 {ID:8}