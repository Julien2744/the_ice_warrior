execute positioned ~ ~-1 ~ positioned ^ ^ ^2 run data modify entity @n[type=item,nbt={Item:{components:{"minecraft:item_name":'{"italic":false,"text":"Ice Warrior Head"}'}}},distance=..1.5] Motion[0] set value -1.0d
playsound minecraft:entity.zombie.attack_wooden_door hostile @a[distance=..16] ^ ^-0.5 ^2 4 2
playsound minecraft:entity.player.attack.sweep hostile @a[distance=..16] ^ ^-0.5 ^2 4 1
execute positioned ~ ~-1.75 ~ run particle crit ^ ^ ^2 0 0 0 0 1 normal