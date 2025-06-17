## -- PHASE 1 ATTACKS -- ##
#parry
execute positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 if entity @n[type=#icewarrior:can_parry,distance=..1.5,tag=!icew.parry,nbt=!{inGround:1b}] run function icewarrior:boss/execute_attack_p1 {ID:1}