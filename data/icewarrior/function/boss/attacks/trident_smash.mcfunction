execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run playsound minecraft:item.mace.smash_ground_heavy hostile @a[distance=..16] ~ ~ ~ 2 1.25
execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run particle dust_pillar{block_state:"minecraft:snow_block"} ~ ~-0.15 ~ 0.25 0 0.25 0 20 normal

execute positioned ~ ~-1 ~ positioned ^ ^ ^2.5 run execute if function icewarrior:boss/attacks/damage/trident_smash run scoreboard players add @s icew.combo 1
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players set @s icew.combo 0
execute on vehicle run data remove entity @s HandItems[0].id