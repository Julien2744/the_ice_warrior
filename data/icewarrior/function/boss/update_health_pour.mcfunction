#update boss health %
execute store result score @n[type=item_display,tag=aj.ice_warrior.root,distance=..8] icew.math.mem run data get entity @s Health 100
execute store result score @n[type=item_display,tag=aj.ice_warrior.root,distance=..8] icew.math.div run attribute @s generic.max_health get
scoreboard players operation @n[type=item_display,tag=aj.ice_warrior.root,distance=..8] icew.math.mem /= @n[type=item_display,tag=aj.ice_warrior.root,distance=..8] icew.math.div
scoreboard players operation @n[type=item_display,tag=aj.ice_warrior.root,distance=..8] icew.health_pour = @n[type=item_display,tag=aj.ice_warrior.root,distance=..8] icew.math.mem
