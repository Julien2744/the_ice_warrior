scoreboard players set @s icew.attCooldown 40

execute on vehicle store result score @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] icew.math.mem run attribute @s generic.max_health get 0.01
scoreboard players operation @s icew.health += @s icew.math.mem
execute on vehicle store result entity @s Health float 1 run scoreboard players get @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] icew.health

execute on vehicle run function icewarrior:boss/update_health_pour