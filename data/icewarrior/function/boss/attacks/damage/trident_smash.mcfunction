execute on vehicle run function icewarrior:boss/attacks/common_disable_shield

execute if score @s icew.phase matches 1 run execute on vehicle at @e[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
execute if score @s icew.phase matches 1 run execute on vehicle run return run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=icew.target,distance=..2.5] 14 icewarrior:ice_warrior_attack by @s

execute if score @s icew.phase matches 2 run execute on vehicle at @e[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..0.5] 18 icewarrior:ice_warrior_attack by @s
execute if score @s icew.phase matches 2 run execute on vehicle run return run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=icew.target,distance=..2.5] 18 icewarrior:ice_warrior_attack by @s