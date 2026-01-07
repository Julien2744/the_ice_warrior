execute if score @s[tag=!icew.iceSpikeSummoned] icew.iceRingDuration matches 1..35 run scoreboard players remove @s icew.iceRingDuration 1
execute if score @s[tag=!icew.iceSpikeSummoned] icew.iceRingDuration matches 33 run data merge entity @s {start_interpolation:0,interpolation_duration:33,transformation:{left_rotation:[0.6f,-100f,100f,0.6f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,0.25f]}}

#check if the ring is in an hot biome
execute if score @s[tag=!icew.iceSpikeSummoned] icew.iceRingDuration matches 25 if biome ~ ~ ~ #snow_golem_melts run function icewarrior:ice_spike/burn_ring

execute if score @s[tag=!icew.iceSpikeSummoned] icew.iceRingDuration matches 0 run function icewarrior:ice_spike/summon_spike

execute if score @s[tag=icew.iceSpikeSummoned] icew.iceRingDuration matches 1..55 run scoreboard players remove @s icew.iceRingDuration 1
execute if score @s[tag=icew.iceSpikeSummoned] icew.iceRingDuration matches 0 run kill @s