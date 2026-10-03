function icewarrior:boss/attacks/common_disable_shield

execute positioned ~ ~1.5 ~ run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.25] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~2.5 ~ run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.25] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute positioned ~ ~3.5 ~ run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1.25] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s