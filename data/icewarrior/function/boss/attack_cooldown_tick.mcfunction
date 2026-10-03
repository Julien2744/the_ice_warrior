execute unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 \
    unless biome ~ ~-1 ~ #icewarrior:hot run \
        scoreboard players remove @s icew.attCooldown 1
execute unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 0 \
    if biome ~ ~-1 ~ #icewarrior:hot \
    unless predicate icewarrior:random/25 run \
        scoreboard players remove @s icew.attCooldown 1

execute unless score @s icew.attCooldown matches -20..0 if score @s icew.phase matches 1..3 run \
    scoreboard players remove @s icew.attCooldown 1