summon item_display ~ ~0.25 ~ {width:5f,height:1f,start_interpolation:0,interpolation_duration:0,Tags:["icew.immune","icew.ice_ring"],transformation:{left_rotation:[0.6f,0f,0f,0.6f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4.5f,4.5f,0.25f]},item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":41790}}}
scoreboard players add @n[type=item_display,tag=icew.ice_ring,tag=icew.immune,distance=..1.5] icew.iceRingDuration 35
playsound minecraft:entity.evoker.cast_spell hostile @a[distance=..16] ~ ~ ~ 3 0

#if the tag is "icew.iceMasterSummon" the spike will do %damage, otherwise it will deal 10dmg

$tag @n[type=item_display,tag=icew.ice_ring,tag=icew.immune,distance=..1.5] add $(tag)