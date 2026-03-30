execute unless score @s icew.phase matches 3 run scoreboard players set @s icew.attCooldown 40

#non-master variant
execute unless score @s icew.phase matches 3 store result score @s icew.math.mem on vehicle run attribute @s generic.max_health get 0.01
execute unless score @s icew.phase matches 3 run scoreboard players operation @s icew.health += @s icew.math.mem

#master variant
execute if score @s icew.phase matches 3 run scoreboard players add @s icew.health 1

execute on vehicle store result entity @s Health float 1 on passengers run scoreboard players get @s icew.health

execute on vehicle run function icewarrior:boss/update_health_pour