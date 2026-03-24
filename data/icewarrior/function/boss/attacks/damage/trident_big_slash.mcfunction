data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}

execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..2.25] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..0.5] 15 icewarrior:ice_warrior_attack by @s
return run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=icew.target,distance=..2.25] 15 icewarrior:ice_warrior_attack by @s