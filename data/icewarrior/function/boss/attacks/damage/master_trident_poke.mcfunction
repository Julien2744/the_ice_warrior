function icewarrior:boss/attacks/common_disable_shield

effect give @n[type=!#icewarrior:non_living,type=!minecraft:player,tag=!icew.immune,distance=..2.5] slowness 3 0 false
effect give @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..2.5] slowness 3 0 false

execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 15 icewarrior:ice_warrior_attack by @s
execute positioned ^ ^ ^1 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute positioned ^ ^ ^2 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 13 icewarrior:ice_warrior_attack by @s
execute positioned ^ ^ ^3 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 11 icewarrior:ice_warrior_attack by @s