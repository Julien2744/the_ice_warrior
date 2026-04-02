scoreboard players set @s icew.canAttack 1
execute if score @s icew.phase matches 3 run tag @s remove icew.iceclaw
execute if score @s icew.phase matches 3 run scoreboard players set @s icew.p3_change_weapon 120
execute on vehicle run data modify entity @s Invulnerable set value 0b