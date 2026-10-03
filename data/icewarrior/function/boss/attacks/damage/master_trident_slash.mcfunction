function icewarrior:boss/attacks/common_disable_shield

effect give @n[type=!#icewarrior:non_living,type=!minecraft:player,tag=!icew.immune,distance=..2.5] slowness 3 0 false
effect give @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..2.5] slowness 3 0 false

execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..0.5] 14 icewarrior:ice_warrior_attack by @s
return run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=icew.target,distance=..2.5] 14 icewarrior:ice_warrior_attack by @s