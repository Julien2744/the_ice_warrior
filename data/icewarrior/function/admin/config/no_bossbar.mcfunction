$scoreboard players set #icew.config icew.config.bossbar $(state)
execute if entity @s[type=player] run function icewarrior:admin/_/config

execute if score #icew.config icew.config.bossbar matches 1 if score #icew.global icew.spawned matches 1 run bossbar remove icew_bossbar

execute if score #icew.config icew.config.bossbar matches 0 if score #icew.global icew.spawned matches 1 run bossbar add icew_bossbar {"text":"Ice Warrior","color":"aqua"}
execute if score #icew.config icew.config.bossbar matches 0 if score #icew.global icew.spawned matches 1 run bossbar set icew_bossbar style notched_6
execute if score #icew.config icew.config.bossbar matches 0 if score #icew.global icew.spawned matches 1 run bossbar set icew_bossbar color blue
execute if score #icew.config icew.config.bossbar matches 0 if score #icew.global icew.spawned matches 1 run bossbar set icew_bossbar players @a[distance=..75]

#set bossbar
execute if score #icew.config icew.config.bossbar matches 0 if score #icew.global icew.spawned matches 1 run execute store result bossbar icew_bossbar max run attribute @n[type=stray,tag=icew.hitbox,distance=..128] generic.max_health get
execute if score #icew.config icew.config.bossbar matches 0 if score #icew.global icew.spawned matches 1 run execute store result bossbar icew_bossbar value run data get entity @n[type=stray,tag=icew.hitbox,distance=..128] Health