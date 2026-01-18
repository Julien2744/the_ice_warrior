item replace entity @p[predicate=icewarrior:check_soul_ice_shard_item,distance=..8,gamemode=!creative,gamemode=!spectator] weapon.mainhand with air

tag @n[type=item_display,tag=aj.ice_warrior_display.root,distance=..2] add icew.boss_summoning

playsound minecraft:block.sculk_shrieker.shriek block @a[distance=..16] ~ ~ ~ 1 0.8
particle minecraft:sculk_soul ~ ~ ~ 0 0 0 0 1 normal @a[distance=..16]

#remove interaction
kill @s

scoreboard players set @n[type=block_display,tag=icew.ice_room,distance=..2] icew.attCooldown 1

#say test init play anim