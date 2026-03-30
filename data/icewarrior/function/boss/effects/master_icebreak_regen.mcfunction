execute store result score @s icew.math.mem on vehicle run attribute @s generic.max_health get 0.015

scoreboard players operation @s icew.health += @s icew.math.mem
execute on vehicle store result entity @s Health float 1 on passengers run scoreboard players get @s icew.health

execute on vehicle run function icewarrior:boss/update_health_pour

execute store result score #icew.global icew.checkGriefing run gamerule mobGriefing
playsound minecraft:item.axe.strip hostile @a[distance=..16] ~ ~ ~ 2 1
particle dust{color:[0.6,0.7,0.9],scale:0.5} ~ ~ ~ 0.3 0.5 0.3 0 50
execute if score #icew.global icew.checkGriefing matches 1 if block ^1 ^ ^ #ice run setblock ^1 ^ ^ air destroy