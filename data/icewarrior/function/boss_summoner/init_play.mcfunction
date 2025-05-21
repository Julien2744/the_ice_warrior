tag @n[type=item_display,tag=aj.ice_warrior_display.root,distance=..2] add icew.boss_summoning

playsound block.lava.ambient block @a[distance=..16]
particle lava ~ ~1.5 ~ 0.5 0.5 0.5 1 15 normal @a[distance=..16]

#remove interaction
kill @s

schedule function icewarrior:boss_summoner/anim 1.5s

say test init play anim