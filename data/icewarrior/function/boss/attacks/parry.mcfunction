execute if entity @n[type=#icewarrior:can_parry,distance=..2,tag=!icew.parry] run tag @n[type=#icewarrior:can_parry,distance=..2] add icew.parry
particle crit
particle sweep_attack
playsound minecraft:block.anvil.land hostile @a[distance=..64] ~ ~ ~ 4 2
launch @n[type=#icewarrior:can_parry,distance=..1.5,tag=icew.parry] setMotion 0 0 0
execute facing entity @n[tag=icew.target,distance=..128] eyes run launch @n[type=#icewarrior:can_parry,distance=..1.5,tag=icew.parry] looking 2.25