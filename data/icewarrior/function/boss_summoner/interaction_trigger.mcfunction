advancement revoke @s only icewarrior:interact_ice_room

execute as @e[type=interaction,tag=icew.ice_room_interact,limit=1,distance=..12] at @s \
    if data entity @s interaction run function icewarrior:boss_summoner/check_player