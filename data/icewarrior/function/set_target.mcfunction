# kill bait if target is player
execute if entity @s[type=player] if entity @e[type=bat,tag=icew.bait,distance=..128,limit=1] run \
    kill @e[type=bat,tag=icew.bait,distance=..128,limit=1]

tag @e[tag=icew.target,distance=..128] remove icew.target
tag @s[tag=!icew.immune] add icew.target

# summon bait
execute if entity @s[type=!player] unless entity @e[type=bat,tag=icew.bait,distance=..128,limit=1] run \
    summon bat ~ ~ ~ \
    {\
        Silent:1b,\
        Glowing:0b,\
        DeathLootTable:"icewarrior:empty",\
        PersistenceRequired:1b,\
        NoAI:1b,\
        Tags:["icew.bait","icew.immune","smithed.strict"],\
        active_effects:\
            [\
                {id:"minecraft:resistance",amplifier:5,duration:-1,show_particles:0b},\
                {id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}\
            ],\
        attributes:\
            [\
                {id:"minecraft:follow_range",base:0},\
                {id:"minecraft:scale",base:0.07},\
                {id:"minecraft:burning_time",base:0}\
            ]\
    }

# compability tags
execute as @n[type=bat,tag=icew.bait,tag=!smithed.entity,distance=..128] at @s run \
    function icewarrior:compatibility_tags