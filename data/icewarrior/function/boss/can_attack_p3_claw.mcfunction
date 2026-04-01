#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 3 ATTACKS ONLY FOR ICE CLAW -- ##

#parry
execute if score @s icew.attCooldown matches -20..0 run execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run execute if entity @e[type=#icewarrior:can_parry,dx=0.6,dy=1.75,dz=0.5,tag=!icew.parry,nbt=!{inGround:1b},limit=1] run function icewarrior:boss/execute_attack_p0 {ID:1}

#crit_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ^ ^ ^0.8 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:6}


#bored attack
execute if score @s icew.attCooldown matches -20 run execute positioned as @s run function icewarrior:boss/bored_attack