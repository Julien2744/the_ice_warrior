#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 1 ATTACKS -- ##
#trdient_slash
execute if score @s icew.attCooldown matches 0 run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute if entity @n[tag=icew.target,distance=..2.25] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p1 {ID:1}