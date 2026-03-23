playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle positioned ~ ~-1.5 ~ run execute if function icewarrior:boss/attacks/damage/master_trident_slash run execute on passengers run scoreboard players add @s icew.combo 1
particle sweep_attack ~ ~-0.75 ~
execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] if score @s icew.combo matches 1.. run scoreboard players remove @s icew.combo 1
execute on vehicle run data remove entity @s HandItems[0].id

execute at @s if entity @n[tag=icew.target,distance=..4] on vehicle run launch @s looking 0.75
execute at @s if entity @n[tag=icew.target,distance=5..16] unless block ~ ~-2 ~ #ice on vehicle run launch @s looking 2
execute at @s if entity @n[tag=icew.target,distance=5..16] if block ~ ~-2 ~ #ice on vehicle run launch @s looking 1