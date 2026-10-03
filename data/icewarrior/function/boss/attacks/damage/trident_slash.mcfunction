function icewarrior:boss/attacks/common_disable_shield

execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..0.5] 12 icewarrior:ice_warrior_attack by @s
return run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=icew.target,distance=..2.5] 12 icewarrior:ice_warrior_attack by @s