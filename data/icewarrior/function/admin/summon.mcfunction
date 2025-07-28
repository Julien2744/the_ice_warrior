#hitbox
summon stray ~ ~ ~ {CustomName:'"Ice Warrior"',Silent:1b,Glowing:0b,DeathLootTable:"minecraft:empty",PersistenceRequired:1b,CanPickUpLoot:0b,Health:170f,Tags:["icew.hitbox","icew.immune"],Rotation:[0.0F,0.0F],ArmorItems:[{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":1,"minecraft:enchantments":{levels:{"minecraft:frost_walker":1}}}},{},{},{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:custom_model_data":1}}],ArmorDropChances:[0.000F,0.085F,0.085F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}],attributes:[{id:"minecraft:generic.armor",base:15},{id:"minecraft:generic.armor_toughness",base:4},{id:"minecraft:generic.attack_damage",base:0},{id:"minecraft:generic.attack_knockback",base:0},{id:"minecraft:generic.attack_speed",base:0},{id:"minecraft:generic.fall_damage_multiplier",base:0},{id:"minecraft:generic.follow_range",base:75},{id:"minecraft:generic.knockback_resistance",base:0.5},{id:"minecraft:generic.jump_strength",base:0.525},{id:"minecraft:generic.movement_speed",base:0.3},{id:"minecraft:generic.step_height",base:1.25},{id:"minecraft:generic.max_health",base:170}]}

#model
execute unless entity @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..4] run tellraw @a[distance=..64] [{"color":"red","hoverEvent":{"action":"show_text","value":[{"text":"error message sent by the datapack The_Ice_Warrior","color":"gray"}]},"text":"Problem detected"},{"color":"red","text":": Ice Warrior hitbox has been replaced or is missing !"}]
execute if entity @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..4] run execute rotated as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..4] run function animated_java:ice_warrior/summon {args:{}}
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run ride @s mount @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..4]
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] view_range set value 0b

#initialize scoreboard
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run function icewarrior:boss/init_scoreboard

#boss bar
bossbar add icew_bossbar {"text":"Ice Warrior","color":"aqua"}
bossbar set icew_bossbar style progress
bossbar set icew_bossbar color blue
bossbar set icew_bossbar players @a[distance=..128]

#initiliaze boss health%
execute as @n[type=stray,tag=icew.hitbox,distance=..4] at @s run function icewarrior:boss/update_health_pour

#set bossbar
execute store result bossbar icew_bossbar max run attribute @n[type=stray,tag=icew.hitbox,distance=..4] generic.max_health get
execute store result bossbar icew_bossbar value run data get entity @n[type=stray,tag=icew.hitbox,distance=..4] Health

#tag @p[distance=..32] add icew.target