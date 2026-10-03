function icewarrior:boss/attacks/common_disable_shield

execute positioned ~ ~-4.5 ~ positioned ^ ^ ^0.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.75] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~-6 ~ positioned ^ ^ ^0.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.75] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s