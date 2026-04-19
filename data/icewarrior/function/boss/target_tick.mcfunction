# Bait targeting system (mc1.21.1):
# 
#   Description
# This system work by making the mob-hitbox (mob that is used for the hitbox/heath/pathfinding)
# target a bait (in this case a bat), that is alway teleported to the mob who has the target tag
# (in this case "icew.target")
#
#   Why ?
# Because the Stray (mob-hitbox) can deal unwanted damage to the target, therefor this can look wierd
# and mess up the real attacks deal by the boss
#
#   Here how it work (this is repeated every tick !)
# 1. We assign a target by giving the tag "icew.target" (done in function icewarrior:set_target)
# 2. We check if the Stray doesn't already have a target
#       if the target isn't the bait we make him forget it by giving it
#       negative follow_range
#       or
#       if there isn't a bait we assign whoewer the Stray is targeting as the boss target
# 3. We make the Stray aggo to the bait by damaging him and saying that the damage was
# done by the bait
#
#   Other informations
# - We re-give the Stray positive follow_range if he doesn't have a target or he's targeting
#   the bait
# 
# - We remove the the bait if the Stray is targeting a Player (because the Stray doesn't damage
#   the player, but can damage any other entity somehow)
# 
# - The code bellow also kinda explain how the system work, and the order of execution is kinda
#   important
# 
# - This system was made by me and made for The Ice Warrior Datapack but can be re-purposed for any
#   other custom mob made with Datapack
# 

#tp the bait to the target
execute positioned as @n[type=!player,tag=icew.target,distance=..128] \
    run tp @n[type=bat,tag=icew.bait] ~ ~ ~

#automatically set_target using the mob-hitbox target
execute unless entity @e[tag=icew.target,distance=..128,limit=1] \
    on vehicle on target if entity @s[tag=!icew.immune] run function icewarrior:set_target

#automatically set_target by checking if there is any entity that the boss should be aggro on
execute unless entity @e[tag=icew.target,distance=..128,limit=1] \
    if entity @e[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..16,limit=1] \
    on vehicle if entity @s[nbt={HurtTime:0s}] \
    as @n[type=#icewarrior:aggro_boss,tag=!icew.immune,distance=..16] run function icewarrior:set_target

#remove mob-hitbox target if his target isn't the bait or has the tag icew.immune
execute if entity @e[type=!player,tag=icew.target,distance=..128,limit=1] \
    on vehicle unless entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] \
    if entity @s[predicate=icewarrior:has_target] \
    on target if entity @s[predicate=icewarrior:cannot_target] \
    run attribute @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] generic.follow_range modifier add icew.forget_target -999 add_value

#re-give followrange if the mob-hitbox doesn't have a target
execute on vehicle \ 
    if entity @s[nbt={attributes:[{id:"minecraft:generic.follow_range",modifiers:[{id:"minecraft:icew.forget_target"}]}]}] \ 
    if entity @s[nbt={HurtTime:0s}] \
    unless entity @s[predicate=icewarrior:has_target] \
    run attribute @s minecraft:generic.follow_range modifier remove icew.forget_target

#make the mob-hitbox target the bait
execute if entity @e[type=!player,tag=icew.target,distance=..64,limit=1] \
    on vehicle unless entity @s[predicate=icewarrior:has_target] \
    if entity @s[nbt={HurtTime:0s}] \
    run damage @s 0 icewarrior:aggro_boss by @e[type=bat,tag=icew.bait,distance=..64,limit=1]

#kill bait if no target
execute if entity @e[type=bat,tag=icew.bait,distance=..128,limit=1] \
    unless entity @n[tag=icew.target] \
    run kill @e[type=bat,tag=icew.bait,distance=..128,limit=1]

#remove target on creative/spectator player
execute if entity @a[tag=icew.target,gamemode=!survival,gamemode=!adventure,distance=..64,limit=1] \
    run tag @p[tag=icew.target,gamemode=!survival,gamemode=!adventure,distance=..64] remove icew.target