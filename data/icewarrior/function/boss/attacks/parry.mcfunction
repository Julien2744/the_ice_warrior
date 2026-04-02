scoreboard players add @s icew.combo 1
execute positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 if entity @n[type=#icewarrior:can_parry,distance=..4,tag=!icew.parry] run tag @n[type=#icewarrior:can_parry,distance=..4] add icew.parry

execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run particle end_rod ~ ~ ~ 0 0 0 0 0 normal
execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run playsound minecraft:block.anvil.land hostile @a[distance=..64] ~ ~ ~ 4 2

launch @n[type=#icewarrior:can_parry,dx=0.6,dy=1.75,dz=0.5,tag=icew.parry] setMotion 0 0 0
execute if score @s icew.phase matches 0 facing entity @n[tag=icew.target,distance=..128] eyes positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 run launch @n[type=#icewarrior:can_parry,distance=..4,tag=icew.parry,nbt=!{inGround:1b}] looking 2.25
execute if score @s icew.phase matches 3 facing entity @n[tag=icew.target,distance=..128] eyes positioned ~ ~-0.8 ~-1 positioned ^ ^ ^0.5 run launch @n[type=#icewarrior:can_parry,distance=..4,tag=icew.parry,nbt=!{inGround:1b}] looking 2.75