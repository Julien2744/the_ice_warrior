say death

execute as @n[type=item_display,tag=aj.icew_head.root,distance=..2] run function animated_java:icew_head/remove/this
function animated_java:ice_warrior/remove/this

execute unless entity @e[type=item_display,tag=aj.ice_warrior.root,limit=1] run scoreboard players set #icew.global icew.spawned 0
execute if score #icew.global icew.spawned matches 0 run bossbar remove icew_bossbar