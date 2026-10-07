tag @s add icew.iceSpikeSummoned

#summon at mobs
execute positioned ~-1.4 ~ ~-1.4 positioned as @e[type=!#icewarrior:non_living,type=!player,tag=!icew.immune,dx=2.5,dy=0,dz=2.5] run \
    summon minecraft:block_display ~ ~-0.4 ~ {Tags:["icew.immune","icew.ice_spike"],block_state:{id:"minecraft:packed_ice"},brightness:{block:15,sky:15},height:3.0f,transformation:{left_rotation:[0.2419219f,0.0f,0.0f,0.9702957f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3750006f,0.3125f,0.375f],translation:[0.0f,0.0f,0.0f]},width:1.0f,Passengers:[{id:"minecraft:marker",Tags:["icew.immune","icew.spike_dmg"],data:{dmg:0}}]}
#summon at survival/adventure players
execute positioned ~-1.4 ~ ~-1.4 positioned as @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,dx=2.5,dy=0,dz=2.5] run \
    summon minecraft:block_display ~ ~-0.4 ~ {Tags:["icew.immune","icew.ice_spike"],block_state:{id:"minecraft:packed_ice"},brightness:{block:15,sky:15},height:3.0f,transformation:{left_rotation:[0.2419219f,0.0f,0.0f,0.9702957f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3750006f,0.3125f,0.375f],translation:[0.0f,0.0f,0.0f]},width:1.0f,Passengers:[{id:"minecraft:marker",Tags:["icew.immune","icew.spike_dmg"],data:{dmg:0}}]}

#for some unknow eldritch reason I can't put all the rotations in 1 function to remove the execute because it will break. WHY ??? SERIOUSLY WHY !!
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s facing entity @n[type=item_display,tag=icew.ice_ring,tag=icew.immune,distance=..3] feet \
    run rotate @s ~180 0
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run tp ^ ^ ^-0.75
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] at @s run function icewarrior:ice_spike/spikes_summon_effect

#if the tag is "icew.iceMasterSummon" the spike will do %damage, otherwise it will deal 10dmg
execute if entity @s[tag=icew.iceMasterSummon] run tag @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] add icew.iceMasterSummon

#cooldown for when to destroy the ring and the spikes
# spikes
scoreboard players add @e[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] icew.iceRingDuration 50

# ring
execute if entity @n[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] run scoreboard players add @s icew.iceRingDuration 55
execute unless entity @n[type=block_display,tag=icew.ice_spike,tag=icew.immune,distance=..3] run scoreboard players add @s icew.iceRingDuration 20