execute at @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] run playsound block.lava.extinguish block @a[distance=..16]
execute at @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] run particle smoke ~ ~1 ~ 1 1 1 0 35 normal @a[distance=..16]
execute at @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] run kill @n[type=block_display,tag=icew.ice_room,distance=..2]
execute at @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] run fill ~-2 ~-1 ~1 ~1 ~3 ~-2 minecraft:air replace minecraft:barrier

execute as @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] at @s run function icewarrior:admin/_/summon
execute as @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] at @s run execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/anim/start_falling

#keep at end
execute as @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning] at @s run function animated_java:ice_warrior_display/remove/this