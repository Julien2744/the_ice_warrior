data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}

execute positioned ^ ^ ^0.5 if entity @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1] run particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 5 normal
execute positioned ^ ^ ^0.5 at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 20 icewarrior:ice_warrior_attack by @s

execute positioned ^ ^ ^1.5 if entity @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1] run particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 5 normal
execute positioned ^ ^ ^1.5 at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 20 icewarrior:ice_warrior_attack by @s

execute positioned ^ ^ ^2.5 if entity @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1] run particle minecraft:crit ~ ~1 ~ 0 0 0 0.5 5 normal
execute positioned ^ ^ ^2.5 at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..1] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 18 icewarrior:ice_warrior_attack by @s