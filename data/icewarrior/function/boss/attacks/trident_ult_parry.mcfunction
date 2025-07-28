say test
execute if entity @n[type=#icewarrior:can_parry,distance=..1.25,tag=!icew.parry] run tag @n[type=#icewarrior:can_parry,distance=..1.25] add icew.parry
execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^1 run particle end_rod ~ ~ ~ 0 0 0 0 0 normal
execute positioned as @s positioned ~ ~-0.75 ~ positioned ^ ^ ^1 run playsound minecraft:block.anvil.land hostile @a[distance=..64] ~ ~ ~ 4 2
launch @n[type=#icewarrior:can_parry,distance=..1.25,tag=icew.parry] setMotion 0 0 0
execute facing entity @n[tag=icew.target,distance=..128] eyes run launch @n[type=#icewarrior:can_parry,distance=..1.25,tag=icew.parry,nbt=!{inGround:1b}] looking 1.75