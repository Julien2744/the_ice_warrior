#phase 0
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if entity @n[tag=icew.target,distance=..24] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p0
#phase 1 & 2
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..2 if entity @n[tag=icew.target,distance=..24] run execute positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p1
#phase 3 (master)
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 3 if entity @n[tag=icew.target,distance=..42] if entity @s[tag=!icew.launchToTarget,tag=!icew.iceclaw] positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p3
execute if score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 3 if entity @n[tag=icew.target,distance=..42] if entity @s[tag=!icew.launchToTarget,tag=icew.iceclaw] positioned ~ ~-1.5 ~ run function icewarrior:boss/can_attack_p3_claw

#cooldown
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 unless biome ~ ~-1 ~ #snow_golem_melts run scoreboard players remove @s icew.attCooldown 1
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 if biome ~ ~-1 ~ #snow_golem_melts run execute unless predicate icewarrior:random_25 run scoreboard players remove @s icew.attCooldown 1
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..3 run scoreboard players remove @s icew.attCooldown 1