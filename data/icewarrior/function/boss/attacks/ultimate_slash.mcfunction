execute unless score @s icew.phase matches 3 run scoreboard players set @s icew.combo 0
execute if score @s icew.phase matches 3 run scoreboard players remove @s icew.combo 2

playsound minecraft:entity.player.attack.crit hostile @a[distance=..28] ~ ~ ~ 4 0
playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..28] ~ ~ ~ 4 0

execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}
execute on vehicle run execute positioned ~ ~-1 ~ run function icewarrior:boss/attacks/damage/ultimate_slash
execute on vehicle run data remove entity @s HandItems[0].id