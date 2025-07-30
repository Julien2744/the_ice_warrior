playsound minecraft:entity.breeze.death hostile @a[distance=..8] ~ ~ ~ 2 0
particle minecraft:snowflake ~ ~-1 ~ 0 0 0 0.1 17 normal
particle minecraft:poof ~ ~-1 ~ 0.25 0.25 0.25 0 25 normal

execute store result score #icew.global icew.checkMobLoot run gamerule doMobLoot
execute if score #icew.global icew.checkMobLoot matches 1 run loot spawn ~ ~-0.8 ~ loot icewarrior:entity/ice_warrior
execute if score #icew.global icew.checkMobLoot matches 1 if predicate icewarrior:random_35 run loot spawn ~ ~-0.8 ~ loot icewarrior:entity/ice_warrior
execute if score #icew.global icew.checkMobLoot matches 1 run summon item ~ ~-0.8 ~ {Glowing:1b,Item:{id:"minecraft:player_head",count:1,components:{"minecraft:custom_name":'{"italic":false,"text":"Ice Warrior Head"}',"minecraft:item_name":'{"italic":false,"text":"Ice Warrior Head"}',"minecraft:lore":['{"color":"gray","italic":false,"text":"This head feel cold to the touch."}','{"color":"gray","italic":false,"text":"Strangely, no damage can be seen on the armor,"}','{"color":"gray","italic":false,"text":"as if it was already repaired."}'],"minecraft:rarity":"epic","minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2E1NDU1ZTQ4ODVkM2IyZjcxZjJiOTY0ZDQzMmNkNDYyMjk4NTE0ODNiMmI0MGI5ODFjZDg4ZjRlZWUyNmU5MSJ9fX0="}]},"minecraft:note_block_sound":"minecraft:block.glass.break"}}}

function animated_java:ice_warrior/remove/this

execute unless entity @e[type=item_display,tag=aj.ice_warrior.root,limit=1] run scoreboard players set #icew.global icew.spawned 0
execute if score #icew.global icew.spawned matches 0 run bossbar remove icew_bossbar