playsound minecraft:entity.player.attack.sweep hostile @a[distance=..8] ~ ~ ~ 2 1

execute on vehicle positioned ~ ~-1.5 ~ positioned ^ ^ ^1 if entity @n[tag=icew.target,distance=..1.9] run execute if function icewarrior:boss/attacks/damage/high_slash run execute on passengers run scoreboard players add @s icew.combo 1

effect give @n[type=!#icewarrior:non_living,type=!minecraft:player,tag=!icew.immune,distance=..2] slowness 3 0 false
effect give @a[gamemode=!creative,gamemode=!spectator,tag=!icew.immune,distance=..2] slowness 3 0 false

execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] run scoreboard players remove @s icew.combo 1