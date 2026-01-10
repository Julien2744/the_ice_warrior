kill @s
playsound minecraft:block.snow.break block @a[distance=..8] ~ ~ ~ 1 1
execute if block ~ ~ ~ powder_snow run setblock ~ ~ ~ air destroy
loot spawn ~ ~ ~ loot icewarrior:ice_guard_tower_map