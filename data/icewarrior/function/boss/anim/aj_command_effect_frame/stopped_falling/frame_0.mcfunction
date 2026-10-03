playsound minecraft:entity.player.big_fall hostile @a[distance=..8] ~ ~ ~ 2 1
execute positioned ~ ~-1 ~ if entity @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"ice_warrior_head"}}}},distance=..3.5] \
    run tp @n[type=item,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"ice_warrior_head"}}}},distance=..3.5] ^ ^ ^2