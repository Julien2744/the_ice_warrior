#master_upper_dash_end
execute if entity @s[tag=icew.launchToTarget] positioned ^ ^ ^0.5 positioned ~ ~-2 ~ if entity @n[tag=icew.target,distance=..1.75] run function icewarrior:boss/execute_attack_p3 {ID:6}
execute if entity @s[tag=icew.launchToTarget] on vehicle if entity @s[nbt={OnGround:1b}] on passengers run scoreboard players set @s icew.lookTarget 1
execute if entity @s[tag=icew.launchToTarget] on vehicle if entity @s[nbt={OnGround:1b}] on passengers run tag @s remove icew.launchToTarget
