data remove entity @s interaction

# player doesn't have the correct item(s) to melt the ice
execute unless entity @p[predicate=icewarrior:check_hot_item,distance=..8] \
    unless entity @p[predicate=icewarrior:check_soul_ice_shard_item,distance=..8] run \
        return run title @p[distance=..8] actionbar "Something hotter need to be used to melt the ice"

# correct item(s) to melt the ice
execute if entity @p[predicate=icewarrior:check_hot_item,distance=..8] run \
    return run function icewarrior:boss_summoner/init_play

# used a soul_ice_shard
execute if entity @p[predicate=icewarrior:check_soul_ice_shard_item,distance=..8] run \
    return run function icewarrior:boss_summoner/init_play_master