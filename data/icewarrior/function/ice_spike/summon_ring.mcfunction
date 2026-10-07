summon item_display ~ ~0.25 ~ {\
    width:5f,\
    height:1f,\
    start_interpolation:0,\
    interpolation_duration:0,\
    Tags:["icew.immune","icew.ice_ring"],\
    transformation:{left_rotation:[0.6f,0f,0f,0.6f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5.0f,5.0f,0.25f]},\
    item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"icewarrior:ice_ring"}}\
}
scoreboard players add @n[type=item_display,tag=icew.ice_ring,tag=icew.immune,distance=..1.5] icew.iceRingDuration 35
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..16] ~ ~ ~ 3 0

# effect cloud
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"snowflake"},ReapplicationDelay:5,Radius:2.5f,RadiusPerTick:-0.0075f,RadiusOnUse:-0.075f,Duration:75,potion_duration_scale:0.8f,WaitTime:5,potion_contents:{custom_effects:[{id:"minecraft:slowness",amplifier:0,duration:100}]}}

#if the tag is "icew.iceMasterSummon" the spike will do %damage, otherwise it will deal 10dmg

$tag @n[type=item_display,tag=icew.ice_ring,tag=icew.immune,distance=..1.5] add $(tag)