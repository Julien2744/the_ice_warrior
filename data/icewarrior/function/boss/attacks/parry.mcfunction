scoreboard players add @s icew.combo 1
execute if entity @n[type=#icewarrior:can_parry,distance=..2,tag=!icew.parry] run tag @n[type=#icewarrior:can_parry,distance=..2] add icew.parry
execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run particle end_rod ~ ~ ~ 0 0 0 0 0 normal
execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^0.5 run playsound minecraft:block.anvil.land hostile @a[distance=..64] ~ ~ ~ 4 2
launch @n[type=#icewarrior:can_parry,dx=0.6,dy=1.75,dz=0.5,tag=icew.parry] setMotion 0 0 0
execute facing entity @n[tag=icew.target,distance=..128] eyes run launch @n[type=#icewarrior:can_parry,distance=..2.5,tag=icew.parry,nbt=!{inGround:1b}] looking 2.25