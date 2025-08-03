execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 if entity @n[tag=icew.target,distance=..2.5] run scoreboard players add @s icew.combo 1
execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 unless entity @n[tag=icew.target,distance=..2.5] run scoreboard players set @s icew.combo 0

execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run playsound minecraft:item.mace.smash_ground_heavy hostile @a[distance=..16] ~ ~ ~ 2 1.25
execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run particle dust_pillar{block_state:"minecraft:snow_block"} ~ ~-0.15 ~ 0.25 0 0.25 0 20 normal

execute on vehicle run data merge entity @s {HandItems:[{id:"minecraft:wooden_axe",count:1,components:{"minecraft:unbreakable":{},"minecraft:custom_model_data":1}},{}],HandDropChances:[0.000F,0.085F]}
execute on vehicle at @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run execute at @e[type=!#icewarrior:non_living,tag=!icew.immune,distance=..2.5] run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.5] 16 icewarrior:ice_warrior_attack by @s
execute on vehicle run data remove entity @s HandItems[0].id