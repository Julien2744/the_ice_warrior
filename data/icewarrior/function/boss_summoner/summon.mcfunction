#execute rotated 0 0 run function animated_java:ice_warrior/summon {args:{}}
summon block_display ~-1 ~-0.6 ~-1 {Tags:["icew.ice_room"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,3f,2f]},block_state:{Name:"minecraft:ice"}}
summon interaction ~ ~-1.25 ~ {width:3.5f,height:4f,Tags:["icew.ice_room_interact"]}
summon marker ~ ~ ~ {Tags:[icew.summon_warrior]}