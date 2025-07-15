execute on vehicle run playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~-1.75 ~ 4 1
execute on vehicle run particle minecraft:poof ~ ~-1.75 ~ 0 0 0 0.1 10 normal
execute on vehicle run launch @s setMotion 0 0.3 0
execute on vehicle rotated as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute if entity @n[tag=icew.target,distance=..5.5] run launch @s looking 1.3
execute on vehicle rotated as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute if entity @n[tag=icew.target,distance=5.5..6.5] run launch @s looking 1.525
execute on vehicle rotated as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run execute if entity @n[tag=icew.target,distance=6.5..128] run launch @s looking 1.75