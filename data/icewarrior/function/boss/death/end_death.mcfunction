### TO OPTIMISE ###
#items

# particles
execute unless score @s icew.phase matches 3 run playsound minecraft:entity.breeze.death hostile @a[distance=..16] ~ ~ ~ 4 0
execute unless score @s icew.phase matches 3 run particle minecraft:snowflake ~ ~-1 ~ 0 0 0 0.1 17 normal
execute unless score @s icew.phase matches 3 run particle minecraft:poof ~ ~-1 ~ 0.25 0.25 0.25 0 25 normal

# loots
execute store result score #icew.global icew.checkMobLoot run gamerule mob_drops
execute if score #icew.global icew.checkMobLoot matches 1 run loot spawn ~ ~-0.8 ~ loot icewarrior:entity/ice_warrior
execute if score #icew.global icew.checkMobLoot matches 1 if score @s icew.phase matches 0..1 run function icewarrior:admin/item/ice_warrior_head
execute if score #icew.global icew.checkMobLoot matches 1 if score @s icew.phase matches 2 run function icewarrior:admin/item/soul_ice_shard
execute if score #icew.global icew.checkMobLoot matches 1 if score @s icew.phase matches 3 run function icewarrior:admin/item/cryo_sigil

function aj:ice_warrior/remove/this

execute unless entity @e[type=item_display,tag=aj.ice_warrior.root,limit=1] run \
    scoreboard players set #icew.global icew.spawned 0

execute if score #icew.global icew.spawned matches 0 if entity @e[type=bat,tag=icew.bait,distance=..128,limit=1] run \
    kill @e[type=bat,tag=icew.bait,distance=..128,limit=1]

execute if score #icew.config icew.config.bossbar matches 1 if score #icew.global icew.spawned matches 0 run \
    bossbar remove icew_bossbar

execute if score #icew.global icew.spawned matches 0 run tag @e[tag=icew.target,distance=..128] remove icew.target