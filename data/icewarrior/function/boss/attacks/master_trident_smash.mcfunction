execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run playsound minecraft:item.mace.smash_ground_heavy hostile @a[distance=..16] ~ ~ ~ 2 1.25
execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run particle dust_pillar{block_state:"minecraft:snow_block"} ~ ~-0.15 ~ 0.33 0 0.33 0 25 normal

execute positioned ~ ~-1.5 ~ positioned ^ ^ ^2.5 run execute if function icewarrior:boss/attacks/damage/master_trident_smash run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] if score @s icew.combo matches 1.. run scoreboard players remove @s icew.combo 1

#put here because of the return inside /damage/master_trident_smash and because it don't work if you get damage after the /launch
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^2.5 run launch @e[type=!#icewarrior:non_living,type=!player,tag=!icew.immune,distance=..2.3] addMotion 0 0.5 0
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^2.5 run launch @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..2.3] addMotion 0 0.5 0

execute on vehicle run data remove entity @s HandItems[0].id