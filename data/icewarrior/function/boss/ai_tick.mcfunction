#check mobhitbox
execute unless entity @s[predicate=icewarrior:check_hitbox] run function icewarrior:boss/death/begin_death

#during entrance, check if boss stopped falling
#execute if score @s icew.entranceId matches 1 run execute on passengers if entity @s[nbt={OnGround:1b}] run function