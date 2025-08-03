tag @n[tag=icew.target,distance=..128] remove icew.target
execute if entity @s[type=!player,distance=..128] run tag @s add icew.target
execute if entity @s[type=player,gamemode=!creative,gamemode=!spectator,distance=..128] run tag @s add icew.target