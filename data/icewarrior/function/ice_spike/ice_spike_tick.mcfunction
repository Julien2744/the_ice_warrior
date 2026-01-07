execute if score @s icew.iceRingDuration matches 1..50 run scoreboard players remove @s icew.iceRingDuration 1
execute if score @s icew.iceRingDuration matches 48 run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{left_rotation:[0.28401542f,0.0f,0.0f,0.9588198f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.37500006f,3.1800017f,0.37500018f],translation:[0.0f,0.0f,0.0f]}}

execute if score @s[tag=!icew.iceMasterSummon] icew.iceRingDuration matches 47 run execute positioned ^ ^ ^0.75 positioned ~ ~0.4 ~ run damage @n[type=!#icewarrior:non_living,tag=!icew.immune,distance=..0.25] 10 icewarrior:ice_spike_attack
execute if score @s[tag=icew.iceMasterSummon] icew.iceRingDuration matches 47 run execute positioned ^ ^ ^0.75 positioned ~ ~0.4 ~ run function icewarrior:ice_spike/master_calc_damage

execute if score @s icew.iceRingDuration matches 47 run execute positioned ^ ^ ^0.75 positioned ~ ~0.4 ~ run effect give @n[type=!#icewarrior:non_living,type=!player,tag=!icew.immune,distance=..0.25] minecraft:slowness 6 2 false
execute if score @s icew.iceRingDuration matches 47 run execute positioned ^ ^ ^0.75 positioned ~ ~0.4 ~ run effect give @p[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..0.25] minecraft:slowness 6 2 false

execute if score @s icew.iceRingDuration matches 0 run execute positioned ^ ^ ^0.75 positioned ~ ~0.4 ~ run particle block{block_state:"minecraft:ice"} ~ ~0.25 ~ 0.25 0.5 0.25 0.25 10 normal
execute if score @s icew.iceRingDuration matches 0 run execute on passengers run kill @s
execute if score @s icew.iceRingDuration matches 0 run kill @s