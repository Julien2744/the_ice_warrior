## this is executed every 4t

#boss ai 10tick
execute if score #icew.global icew.spawned matches 1 \
    as @e[type=item_display,tag=aj.ice_warrior.root,limit=100] at @s run \
        function icewarrior:boss/ai_4tick

# keep at end
schedule function icewarrior:four_tick 4t