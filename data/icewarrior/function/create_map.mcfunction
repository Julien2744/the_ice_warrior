kill @s
playsound minecraft:block.trial_spawner.break hostile @a[distance=..8] ~ ~ ~ 2 0
playsound minecraft:ui.cartography_table.take_result block @a[distance=..8] ~ ~ ~ 1 1
execute if block ~ ~ ~ powder_snow run setblock ~ ~ ~ air destroy
loot spawn ~ ~ ~ loot icewarrior:ice_guard_tower_map