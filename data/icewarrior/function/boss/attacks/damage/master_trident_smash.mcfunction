execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}

effect give @n[type=!#icewarrior:non_living,type=!minecraft:player,tag=!icew.immune,distance=..2.5] slowness 5 1 false
effect give @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..2.5] slowness 5 1 false

execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=!icew.target,distance=..0.5] 18 icewarrior:ice_warrior_attack by @s
return run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,tag=icew.target,distance=..2.5] 18 icewarrior:ice_warrior_attack by @s