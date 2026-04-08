#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 3 ATTACKS ONLY FOR ICE CLAW -- ##

#parry
execute if score @s icew.attCooldown matches -20..0 run execute positioned as @s positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 run execute if entity @e[type=#icewarrior:can_parry,dx=1,dy=1.75,dz=1,tag=!icew.parry,nbt=!{inGround:1b},limit=1] run function icewarrior:boss/execute_attack_p0 {ID:1}

#master_claw_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ^ ^ ^0.8 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p3 {ID:12}

#crit_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ^ ^ ^0.8 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:6}

#master_upper_claw
execute if score @s icew.attCooldown matches -20..0 run execute if entity @n[tag=icew.target,distance=8..42] if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p3 {ID:11}

#change back to trident
execute if score @s icew.p3_change_weapon matches 0 if score @s icew.attCooldown matches -20..0 if predicate icewarrior:random_5 run function icewarrior:boss/execute_attack_p3 {ID:13}

#bored attack
execute if score @s icew.attCooldown matches -20 run execute positioned as @s run function icewarrior:boss/bored_attack