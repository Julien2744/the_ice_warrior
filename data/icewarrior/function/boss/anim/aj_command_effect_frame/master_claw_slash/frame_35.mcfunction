function icewarrior:boss/attacks/master_claw_slash
scoreboard players set @s icew.lookTarget 1
scoreboard players set @s icew.forceWalk 1
execute on vehicle if entity @s[nbt={attributes:[{id:"minecraft:movement_speed","modifiers":[{id:"icewarrior:stop_moving"}]}]}] run \
    attribute @s minecraft:movement_speed modifier remove icewarrior:stop_moving