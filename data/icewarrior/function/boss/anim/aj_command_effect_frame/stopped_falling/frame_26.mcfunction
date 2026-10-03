### TO OPTIMISE ###
# player head

execute positioned ~ ~-1 ~ positioned ^ ^ ^2 if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"ice_warrior_head"}}}},distance=..1.5] run function aj:ice_warrior/animations/stopped_falling/stop
execute positioned ~ ~-1 ~ positioned ^ ^ ^2 if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"ice_warrior_head"}}}},distance=..1.5] run function aj:ice_warrior/animations/stopped_falling_phase2/play