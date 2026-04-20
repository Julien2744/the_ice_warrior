#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 0 ATTACKS -- ##
#ultimate
execute if score @s icew.attCooldown matches -20..0 if score @s icew.combo matches 999.. if entity @e[tag=icew.target,distance=..2.5,limit=1] run function icewarrior:boss/execute_attack_p0 {ID:7}
#fix ultimate display not refreshing if the second att of the anim failed to hit
execute if score @s icew.combo matches 0 if data entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" run data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b
execute if score @s icew.combo matches 0 if data entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" run data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b

#parry
execute if score @s icew.attCooldown matches -20..0 run execute positioned as @s positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 run execute if entity @e[type=#icewarrior:can_parry,dx=1,dy=1.75,dz=1,tag=!icew.parry,nbt=!{inGround:1b},limit=1] run function icewarrior:boss/execute_attack_p0 {ID:1}

#change from phase0 to phase1
execute unless score @s icew.combo matches 999.. if score #icew.config icew.config.can_change_phase matches 1 if score @s icew.attCooldown matches -20..0 if score @s icew.health_pour <= #icew.config icew.config.change_phase run function icewarrior:boss/effects/change_phase

#regular_double_slash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ^ ^ ^0.8 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:2}

#high_slash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ^ ^ ^0.8 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p0 {ID:3}

#foward_slash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ^ ^ ^1 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:5}

#long_claw
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned as @s if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^5 if entity @e[tag=icew.target,distance=..1.25,limit=1] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p0 {ID:4}
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned as @s if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^6 if entity @e[tag=icew.target,distance=..1.25,limit=1] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p0 {ID:4}
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned as @s if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^7 if entity @e[tag=icew.target,distance=..1.25,limit=1] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p0 {ID:4}

#crit_slash
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ^ ^ ^0.8 run execute if entity @e[tag=icew.target,distance=..1.75,limit=1] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:6}

#bored attack
execute if score @s icew.attCooldown matches -20 positioned as @s run function icewarrior:boss/bored_attack