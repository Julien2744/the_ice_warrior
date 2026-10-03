#function animated_java:ice_warrior_display/summon {args:{}}
summon item_display ~ ~0.25 ~ \
    {\
        width:1f,\
        height:1f,\
        start_interpolation:0,\
        interpolation_duration:0,\
        Tags:["icew.immune","icew.ice_warrior_display"],\
        item:{id:"minecraft:prismarine_shard",count:1,components:{"minecraft:item_model":"icewarrior:ice_warrior_display"}}\
    }
kill @s