playsound minecraft:item.trident.throw hostile @a[distance=..16] ~ ~ ~ 2 0

execute on vehicle positioned ~ ~-2.5 ~ \
    if function icewarrior:boss/attacks/damage/trident_slash \
    on passengers run scoreboard players add @s icew.combo 1

execute if entity @n[tag=icew.target,distance=..24,nbt={HurtTime:0s}] if score @s icew.combo matches 1.. run scoreboard players remove @s icew.combo 1
execute on vehicle run data modify entity @s equipment.mainhand.components.minecraft:weapon.disable_blocking_for_seconds set value 0

execute on vehicle facing entity @n[tag=icew.target,distance=..6] feet rotated ~ 0 run tp @s ^ ^ ^3
execute on vehicle run launch @s setMotion 0 0.4 0
execute on vehicle run launch @s looking -0.7

tag @s remove icew.launchToTarget
scoreboard players set @s icew.lookTarget 1