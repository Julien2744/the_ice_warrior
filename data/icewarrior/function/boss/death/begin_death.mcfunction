say death

function animated_java:ice_warrior/remove/this

execute unless entity @e[type=item_display,tag=aj.ice_warrior.root,limit=1] run scoreboard players set #icew.global icew.spawned 0
execute if score #icew.global icew.spawned matches 0 run bossbar remove icew_bossbar