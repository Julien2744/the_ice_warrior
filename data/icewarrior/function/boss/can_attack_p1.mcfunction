#execute as @n[type=item_display,tag=aj.ice_warrior.root] at @s run
## -- PHASE 1 & 2 ATTACKS -- ##
#ultimate
execute if score @s icew.attCooldown matches -20..0 run execute if score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1 run execute if entity @n[tag=icew.target,distance=..1.5] run function icewarrior:boss/execute_attack_p1 {ID:6}
#parry
execute if score @s icew.attCooldown matches -20..0 run execute if score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.5 run execute if entity @n[type=#icewarrior:can_parry,tag=!icew.parry,nbt=!{inGround:1b},distance=..1.25] run function icewarrior:boss/execute_attack_p1 {ID:7}
#launch
execute if score @s icew.attCooldown matches -20..0 run execute if score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:air run execute if entity @n[tag=icew.target,distance=3..32] run execute if predicate icewarrior:random_2 run function icewarrior:boss/execute_attack_p1 {ID:8}
#fix ultimate display not refreshing if the second att of the anim failed to hit
execute if score @s icew.combo matches 0 if data entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" run execute on vehicle run attribute @s generic.movement_speed modifier remove icew.trident_ult_movement_speed
execute if score @s icew.combo matches 0 if data entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" run data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] item.components."minecraft:enchantment_glint_override" set value 0b

#trdient_slash (phase 1)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.25 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p1 {ID:1}
#trdient_slash (phase 2)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 2 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.25 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_35 run function icewarrior:boss/execute_attack_p2 {ID:1}

#trident_long
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^0.8 run execute if entity @n[tag=icew.target,distance=..1.25] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:2}
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1.8 run execute if entity @n[tag=icew.target,distance=..1.25] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:2}
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^2.8 run execute if entity @n[tag=icew.target,distance=..1.25] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:2}

#trdient_upper
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ positioned ^ ^ ^1 run execute if entity @n[tag=icew.target,distance=..1.75] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:4}

#trdient_smash (phase 1)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1 unless score @s icew.combo matches 999.. run execute positioned ~ ~-1 ~ positioned ^ ^ ^1.75 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p1 {ID:3}
#trdient_smash (phase 2)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 2 unless score @s icew.combo matches 999.. run execute positioned ~ ~-1 ~ positioned ^ ^ ^1.75 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_15 run function icewarrior:boss/execute_attack_p2 {ID:2}

#trident_launch
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^6.25 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:5}
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^7.25 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:5}
execute if score @s icew.attCooldown matches -20..0 unless score @s icew.combo matches 999.. run execute positioned ~ ~-0.75 ~ if block ^ ^ ^1 #minecraft:air positioned ^ ^ ^8.25 run execute if entity @n[tag=icew.target,distance=..1.5] run execute if predicate icewarrior:random_25 run function icewarrior:boss/execute_attack_p1 {ID:5}

#bored attack
execute if score @s icew.attCooldown matches -20 run function icewarrior:boss/effects/launch_to_target
execute if score @s icew.attCooldown matches -20 run scoreboard players set @s icew.attCooldown 2