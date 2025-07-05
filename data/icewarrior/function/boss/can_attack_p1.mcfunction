#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 1 ATTACKS -- ##
#parry
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run execute positioned ~-0.8 ~ ~-0.5 if entity @n[type=#icewarrior:can_parry,dx=0.6,dy=1.75,dz=0.5,tag=!icew.parry,nbt=!{inGround:1b}] run function icewarrior:boss/execute_attack_p1 {ID:1}