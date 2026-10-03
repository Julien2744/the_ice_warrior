#hitbox
summon stray ~ ~ ~ \
    {\
        CustomName:"Ice Warrior",\
        Silent:1b,\
        Glowing:0b,\
        DeathLootTable:"icewarrior:empty",\
        PersistenceRequired:1b,\
        CanPickUpLoot:0b,\
        Health:170f,\
        Tags:["icew.hitbox","icew.immune"],\
        Rotation:[0.0F,0.0F],\
        equipment:{\
            feet:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"minecraft:air","minecraft:enchantments":{"frost_walker":1}}},\
            legs:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"minecraft:air"}},\
            chest:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"minecraft:air"}},\
            head:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"minecraft:air"}},\
            mainhand:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"minecraft:air","minecraft:weapon":{disable_blocking_for_seconds:0}}}\
        },\
        drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000},\
        active_effects:[\
            {id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b,show_icon:0b,ambient:0b}\
        ],\
        attributes:[\
            {id:"minecraft:armor",base:15},\
            {id:"minecraft:armor_toughness",base:4},\
            {id:"minecraft:attack_damage",base:0},\
            {id:"minecraft:attack_knockback",base:0},\
            {id:"minecraft:attack_speed",base:0},\
            {id:"minecraft:fall_damage_multiplier",base:0},\
            {id:"minecraft:follow_range",base:75},\
            {id:"minecraft:knockback_resistance",base:0.5},\
            {id:"minecraft:jump_strength",base:0.525},\
            {id:"minecraft:movement_speed",base:0.3},\
            {id:"minecraft:step_height",base:1.25},\
            {id:"minecraft:max_health",base:170},\
            {id:"minecraft:burning_time",base:0.25}\
        ]\
    }

# error msg
execute unless entity @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] run \
    tellraw @a[distance=..64] [{"color":"red","hover_event":{"action":"show_text","value":[{"text":"error message sent by the datapack The_Ice_Warrior","color":"gray"}]},"text":"Problem detected"},{"color":"red","text":": Ice Warrior hitbox has been replaced or is missing !"}]

# compability tags
execute as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] at @s run \
    function icewarrior:compatibility_tags

# aj model
execute if entity @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] \
    rotated as @n[type=stray,tag=icew.hitbox,tag=icew.immune,distance=..2] run \
        function aj:ice_warrior/summon {args:{}}

# put the model on the hitbox
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] run \
   ride @s mount @n[type=minecraft:stray,tag=icew.immune,distance=..4]

# make the trident invisible
data modify entity @n[type=item_display,tag=aj.ice_warrior.bone.trident,distance=..4] view_range set value 0b

#initialize scoreboard
execute as @n[type=item_display,tag=aj.ice_warrior.root,distance=..4] at @s run \
    function icewarrior:boss/init_scoreboard

#initiliaze boss health%
execute as @n[type=stray,tag=icew.hitbox,distance=..4] at @s run \
    function icewarrior:boss/update_health_pour

#boss bar
execute if score #icew.config icew.config.bossbar matches 1 run bossbar add icew_bossbar {"text":"Ice Warrior","color":"aqua"}
execute if score #icew.config icew.config.bossbar matches 1 run bossbar set icew_bossbar style notched_6
execute if score #icew.config icew.config.bossbar matches 1 run bossbar set icew_bossbar color blue
execute if score #icew.config icew.config.bossbar matches 1 run bossbar set icew_bossbar players @a[distance=..75]

#set bossbar max value
execute if score #icew.config icew.config.bossbar matches 1 run execute store result bossbar icew_bossbar max run attribute @n[type=stray,tag=icew.hitbox,distance=..4] max_health get
execute if score #icew.config icew.config.bossbar matches 1 run execute store result bossbar icew_bossbar value run data get entity @n[type=stray,tag=icew.hitbox,distance=..4] Health

#tag @p[distance=..32] add icew.target