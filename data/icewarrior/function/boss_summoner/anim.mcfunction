playsound block.lava.extinguish block @a[distance=..16]
particle smoke ~ ~1 ~ 1 1 1 0 35 normal @a[distance=..16]
kill @n[type=block_display,tag=icew.ice_room,distance=..2]
fill ~-2 ~-1 ~1 ~1 ~3 ~-2 minecraft:air replace minecraft:barrier

function icewarrior:admin/_/summon
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/anim/start_falling

kill @s