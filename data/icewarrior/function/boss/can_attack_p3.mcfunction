#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 3 ATTACKS -- ##

#master_parry
execute if entity @s[tag=icew.will_parry,tag=!icew.launchToTarget] if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run function icewarrior:boss/execute_attack_p3 {ID:4}

#normal_ultimate
execute if score @s icew.attCooldown matches -20..0 run execute if score @s icew.combo matches 4..999 run execute positioned ^ ^ ^1 run execute if entity @n[tag=icew.target,distance=..1.5] unless predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:6}

#master_trident_slash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ^ ^ ^0.5 run execute if entity @n[tag=icew.target,distance=..2.75] if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p3 {ID:1}

#master_upper_dash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute if entity @n[tag=icew.target,distance=6..32] if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p3 {ID:5}

#master_trident_crit
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute if entity @n[tag=icew.target,distance=16..42] if predicate icewarrior:random_5 run function icewarrior:boss/execute_attack_p3 {ID:7}

#bored attack
execute if score @s icew.attCooldown matches -20 run execute positioned as @s run function icewarrior:boss/bored_attack