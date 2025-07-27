#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 1 ATTACKS -- ##
#trdient_slash
execute if score @s icew.attCooldown matches 0 run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.25 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p1 {ID:1}

#trident_long
execute if score @s icew.attCooldown matches 0 run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..1.25] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p1 {ID:2}
execute if score @s icew.attCooldown matches 0 run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.8 run execute if entity @n[tag=icew.target,distance=..1.25] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p1 {ID:2}
execute if score @s icew.attCooldown matches 0 run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^2.8 run execute if entity @n[tag=icew.target,distance=..1.25] run execute if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p1 {ID:2}

#trdient_smash
execute if score @s icew.attCooldown matches 0 run execute positioned ~ ~-1 ~ positioned ^ ^ ^2.25 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p1 {ID:3}