execute on vehicle run attribute @s minecraft:movement_speed modifier add icewarrior:stop_moving -999 add_value

scoreboard players set @s icew.attCooldown 4
scoreboard players set @s icew.combo 0
scoreboard players set @s icew.canAttack 0

playsound minecraft:entity.pillager.ambient hostile @a[distance=..64] ~ ~ ~ 4 0

execute on vehicle run function icewarrior:boss/effects/trident_buff

function aj:ice_warrior/animations/switch_trident/play

scoreboard players set @s icew.phase 1