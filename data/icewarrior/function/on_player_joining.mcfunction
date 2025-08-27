#this is executed every time the server reload when a player is detected

#initialize scoreboard only once
execute unless score #icew.load icew.loadScoreboard matches 1 if entity @p run function icewarrior:initialization/init_scoreboard

#check dependency
scoreboard players set #icew.global icew.dependency 0
function icewarrior:initialization/check_dependency
execute unless score #icew.global icew.dependency matches 1 run function icewarrior:initialization/no_dependency_warning

schedule clear icewarrior:initialization/check_player