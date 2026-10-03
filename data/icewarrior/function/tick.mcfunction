execute as @e[type=block_display,tag=icew.ice_room,scores={icew.attCooldown=1..},limit=6] at @s \
    run function icewarrior:boss_summoner/anim_master

#boss ai tick
execute if score #icew.global icew.spawned matches 1 run \
    execute as @e[type=item_display,tag=aj.ice_warrior.root,limit=100] at @s run function icewarrior:boss/ai_tick

#ice ring tick
execute as @e[type=item_display,tag=icew.ice_ring,tag=icew.immune] at @s run function icewarrior:ice_spike/ice_ring_tick
execute as @e[type=block_display,tag=icew.ice_spike,tag=icew.immune] at @s run function icewarrior:ice_spike/ice_spike_tick

# fix ghost item
execute if entity @a[tag=icew.give_cryo_sigil,limit=1] at @a[tag=icew.give_cryo_sigil,limit=1] run function icewarrior:admin/item/cryo_sigil