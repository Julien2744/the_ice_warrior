advancement grant @p[predicate=icewarrior:check_soul_ice_shard_item,distance=..8] only icewarrior:invoking_ancient
clear @p[predicate=icewarrior:check_soul_ice_shard_item,distance=..8,gamemode=!creative,gamemode=!spectator] prismarine_shard[minecraft:custom_data={ice_warrior_item:"soul_ice_shard"}] 1

tag @n[type=item_display,tag=icew.ice_warrior_display,distance=..3] add icew.boss_summoning

playsound minecraft:block.sculk_shrieker.shriek block @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0 1 normal @a[distance=..16]

#remove interaction
kill @s

scoreboard players set @n[type=block_display,tag=icew.ice_room,distance=..2] icew.attCooldown 1