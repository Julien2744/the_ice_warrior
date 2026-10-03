function icewarrior:boss/attacks/common_disable_shield

execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 icewarrior:ice_warrior_attack by @s
execute positioned ^ ^ ^1 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 icewarrior:ice_warrior_attack by @s
execute positioned ^ ^ ^2 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 icewarrior:ice_warrior_attack by @s
execute positioned ^ ^ ^3 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 10 icewarrior:ice_warrior_attack by @s