#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 0 ATTACKS -- ##
#ultimate
execute if score @s icew.attCooldown matches -20..0 run execute if score @s icew.combo matches 999.. run function icewarrior:boss/execute_attack_p0 {ID:7}
#fix ultimate display not refreshing if the second att of the anim failed to hit
execute if score @s icew.combo matches 0 if data entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" run data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.right_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b
execute if score @s icew.combo matches 0 if data entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" run data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.left_claw,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b

#parry
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run execute if entity @n[type=#icewarrior:can_parry,dx=0.6,dy=1.75,dz=0.5,tag=!icew.parry,nbt=!{inGround:1b}] run function icewarrior:boss/execute_attack_p0 {ID:1}

#regular_souble_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:2}

#high_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p0 {ID:3}

#foward_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_30 run function icewarrior:boss/execute_attack_p0 {ID:5}

#long_claw
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-0.75 ~ if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^5 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_8 run function icewarrior:boss/execute_attack_p0 {ID:4}
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-0.75 ~ if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^6 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p0 {ID:4}
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-0.75 ~ if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^7 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p0 {ID:4}

#crit_slash
execute if score @s icew.attCooldown matches -20..0 run execute positioned ~ ~-1.5 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p0 {ID:6}

#bored attack
execute if score @s icew.attCooldown matches -20 run function icewarrior:boss/effects/launch_to_target
execute if score @s icew.attCooldown matches -20 run scoreboard players set @s icew.attCooldown 4