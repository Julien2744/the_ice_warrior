execute unless score @s icew.phase matches 3 run scoreboard players set @s icew.combo 0
execute if score @s icew.phase matches 3 run scoreboard players remove @s icew.combo 2

playsound minecraft:entity.player.attack.crit hostile @a[distance=..28] ~ ~ ~ 4 0
playsound minecraft:entity.lightning_bolt.impact hostile @a[distance=..28] ~ ~ ~ 4 0

execute on vehicle run function icewarrior:boss/attacks/common_disable_shield
execute on vehicle run execute positioned ~ ~-1 ~ run function icewarrior:boss/attacks/damage/ultimate_slash
execute on vehicle run data modify entity @s equipment.mainhand.components.minecraft:weapon.disable_blocking_for_seconds set value 0