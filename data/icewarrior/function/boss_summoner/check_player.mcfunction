execute if entity @p[predicate=icewarrior:check_hot_item,distance=..8] run function icewarrior:boss_summoner/init_play
execute unless entity @p[predicate=icewarrior:check_hot_item,distance=..8] run title @p[distance=..8] actionbar "Something hotter need to be used to melt the ice"
data remove entity @s interaction