clear @p[predicate=icewarrior:check_hot_item,distance=..8,gamemode=!creative,gamemode=!spectator] #icewarrior:can_melt_ice_room 1

tag @n[type=item_display,tag=icew.ice_warrior_display,distance=..3] add icew.boss_summoning

playsound minecraft:item.bucket.empty_lava block @a[distance=..16]
particle lava ~ ~1.5 ~ 0.5 0.5 0.5 1 15 normal @a[distance=..16]

#remove interaction
kill @s

schedule function icewarrior:boss_summoner/anim_shc 1.5s

#say test init play anim