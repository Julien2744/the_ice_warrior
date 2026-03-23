# master_trident_slash_poke 
execute positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..3.25,limit=1] if predicate icewarrior:random_50 run function icewarrior:boss/execute_attack_p3 {ID:2}

# master_trident_slash_smash
# (icew.attCooldown matches 45) -> master_trident_slash_poke cooldown: check if master_trident_slash_poke was not chosen
execute unless score @s icew.attCooldown matches 45 run execute positioned ^ ^ ^0.5 if entity @e[tag=icew.target,distance=..3.25,limit=1] run function icewarrior:boss/execute_attack_p3 {ID:3}