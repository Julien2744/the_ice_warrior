playsound minecraft:entity.breeze.shoot hostile @a[distance=..16] ~ ~ ~ 2 0.75

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run execute if function icewarrior:boss/attacks/damage/master_parry_slash run execute on passengers run scoreboard players add @s icew.combo 1

#put here because of the return inside /damage/master_parry_slash and because it don't work if you get damage after the /launch
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run launch @n[type=!#icewarrior:non_living,type=!player,tag=!icew.immune,distance=..2] looking 1.5
execute positioned ~ ~-1.5 ~ positioned ^ ^ ^1.5 run launch @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..2] looking 1.5

execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] if score @s icew.combo matches 1.. run scoreboard players remove @s icew.combo 1
execute on vehicle run data remove entity @s HandItems[0].id