#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 3 ATTACKS -- ##

#master_trident_slash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ^ ^ ^0.5 run execute if entity @e[tag=icew.target,distance=..2.75,limit=1] run execute if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p3 {ID:1}

#bored attack
execute if score @s icew.attCooldown matches -20 run execute positioned as @s run function icewarrior:boss/bored_attack