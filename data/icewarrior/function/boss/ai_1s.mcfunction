## this is executed every 1 second to increase performance

#combo detector
execute if score @s icew.phase matches 0 \
    if score @s icew.combo >= #icew.config icew.config.phase1_combo if score @s icew.combo matches ..998 run \
        function icewarrior:boss/effects/phase0_combo_reached
execute if score @s icew.phase matches 1..2 \
    if score @s icew.combo >= #icew.config icew.config.phase2_combo if score @s icew.combo matches ..998 run \
        function icewarrior:boss/effects/phase1_combo_reached
execute if score @s[tag=!icew.iceclaw] icew.phase matches 3 \
    if score @s icew.combo >= #icew.config icew.config.phase3_combo if score @s icew.combo matches ..998 run \
        function icewarrior:boss/effects/master_combo_reached

#master regen if in cold biome
execute if score #icew.config icew.config.boss_regen matches 1 \
    if score @s icew.phase matches 3 \
    if biome ~ ~-1 ~ #spawns_cold_variant_frogs \
    if score @s icew.health_pour matches 1..99 \
    if score @s icew.attCooldown matches -20..0 run \
        function icewarrior:boss/effects/boss10t_regen

#nerf the boss if hes in warm biome
execute on vehicle unless entity @s[nbt={attributes:[{id:"minecraft:armor",modifiers:[{id:"icewarrior:warm_biome_nerf"}]}]}] \
    if biome ~ ~-1 ~ #icewarrior:hot run \
        attribute @s armor modifier add icewarrior:warm_biome_nerf -3 add_value

execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:armor",modifiers:[{id:"icewarrior:warm_biome_nerf"}]}]}] \
    unless biome ~ ~-1 ~ #icewarrior:hot run \
        attribute @s armor modifier remove icewarrior:warm_biome_nerf

#remove boss bar for the players that are too far away
execute if score #icew.config icew.config.bossbar matches 1 run bossbar set icew_bossbar players @a[distance=..48]