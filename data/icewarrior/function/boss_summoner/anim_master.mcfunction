execute if score @s icew.attCooldown matches 1.. run scoreboard players add @s icew.attCooldown 1

execute if score @s icew.attCooldown matches 35 run playsound minecraft:entity.zombie_villager.cure block @a[distance=..16] ~ ~ ~ 1 2
execute if score @s icew.attCooldown matches 35 run data modify entity @s block_state.Name set value packed_ice

execute if score @s icew.attCooldown matches 50 run playsound minecraft:block.trial_spawner.spawn_item hostile @a[distance=..16] ~ ~ ~ 1 0

execute if score @s icew.attCooldown matches 75 run playsound minecraft:block.glass.break block @a[distance=..16] ~ ~ ~ 1 1
execute if score @s icew.attCooldown matches 75 run summon block_display ~-0.05 ~-0.05 ~-0.05 {Tags:["icew.ice_room_break"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.1f,3.1f,2.1f]},block_state:{Name:"minecraft:frosted_ice",Properties:{age:"2"}}}

execute if score @s icew.attCooldown matches 90 run data merge entity @n[type=block_display,tag=icew.ice_room_break,distance=..1] {block_state:{Name:"minecraft:frosted_ice",Properties:{age:"3"}}}

execute if score @s icew.attCooldown matches 93 run playsound minecraft:block.glass.break block @a[distance=..16] ~ ~ ~ 1 0
execute if score @s icew.attCooldown matches 93 run fill ~-2 ~-1 ~1 ~1 ~3 ~-2 minecraft:air replace minecraft:barrier
execute if score @s icew.attCooldown matches 93 run data merge entity @s {block_state:{Name:"minecraft:air"}}
execute if score @s icew.attCooldown matches 93 run kill @n[type=block_display,tag=icew.ice_room_break,distance=..1]

execute if score @s icew.attCooldown matches 93 run execute as @n[type=item_display,tag=aj.ice_warrior_display.root,tag=icew.boss_summoning,distance=..4] at @s run function animated_java:ice_warrior_display/remove/this

execute if score @s icew.attCooldown matches 94 run particle dust_pillar{block_state:"minecraft:packed_ice"} ~1 ~6 ~1 1 0 1 0.5 50 normal
execute if score @s icew.attCooldown matches 94 run execute positioned ~1 ~ ~1 run function icewarrior:admin/_/summon_master

execute if score @s icew.attCooldown matches 95 run execute positioned ~1 ~ ~1 as @n[type=item_display,tag=aj.ice_warrior.root,tag=icew.master,distance=..4] at @s run function icewarrior:boss_summoner/master_summon_effect

#keep at end
execute if score @s icew.attCooldown matches 96 run kill @s