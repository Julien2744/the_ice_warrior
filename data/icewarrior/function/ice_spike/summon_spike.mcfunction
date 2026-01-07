tag @s add icew.iceSpikeSummoned

#summon
execute positioned ~-1.4 ~ ~-1.4 positioned as @e[type=!#icewarrior:non_living,type=!player,tag=!icew.immune,dx=1.8,dy=0,dz=1.8] run summon minecraft:block_display ~ ~-0.4 ~ {Tags:["icew.immune","icew.ice_spike"],block_state:{Name:"minecraft:packed_ice"},brightness:{block:15,sky:15},height:3.0f,transformation:{left_rotation:[0.2419219f,0.0f,0.0f,0.9702957f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3750006f,0.3125f,0.375f],translation:[0.0f,0.0f,0.0f]},width:1.0f,Passengers:[{id:"minecraft:marker",Tags:["icew.immune","icew.spike_dmg"],data:{dmg:0}}]}
execute positioned ~-1.4 ~ ~-1.4 positioned as @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,dx=1.8,dy=0,dz=1.8] run summon minecraft:block_display ~ ~-0.4 ~ {Tags:["icew.immune","icew.ice_spike"],block_state:{Name:"minecraft:packed_ice"},brightness:{block:15,sky:15},height:3.0f,transformation:{left_rotation:[0.2419219f,0.0f,0.0f,0.9702957f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3750006f,0.3125f,0.375f],translation:[0.0f,0.0f,0.0f]},width:1.0f,Passengers:[{id:"minecraft:marker",Tags:["icew.immune","icew.spike_dmg"],data:{dmg:0}}]}

#for some unknow eldritch reason I can't put all the teleports in 1 function to remove the execute because it will break. WHY ??? SERIOUSLY WHY !!
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run teleport @s ~ ~ ~ facing entity @n[type=item_display,tag=icew.ice_ring,tag=icew.immune,distance=..3]
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run teleport @s ~ ~ ~ ~180 0
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run teleport @s ^ ^ ^-0.75
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run playsound block.glass.break hostile @a[distance=..8] ~ ~ ~ 1 0.75
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run particle block{block_state:"minecraft:ice"} ~ ~0.25 ~ 0.25 0.5 0.25 0.25 10 normal

#if the tag is "icew.iceMasterSummon" the spike will do %damage, otherwise it will deal 10dmg
execute if entity @s[tag=icew.iceMasterSummon] run tag @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] add icew.iceMasterSummon

#cooldown for when do destroy the ring and the spikes
scoreboard players add @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] icew.iceRingDuration 50
execute if entity @n[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] run scoreboard players add @s icew.iceRingDuration 55
execute unless entity @n[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] run scoreboard players add @s icew.iceRingDuration 20