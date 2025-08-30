#this is executed every time the server reload when a player is detected

#check dependency
execute if score #icew.load icew.loadScoreboard matches 1 run scoreboard players set #icew.global icew.dependency 0
execute if score #icew.load icew.loadScoreboard matches 1 run function icewarrior:initialization/check_dependency
execute if score #icew.load icew.loadScoreboard matches 1 run execute unless score #icew.global icew.dependency matches 1 run function icewarrior:initialization/no_dependency_warning

#initialize scoreboard only once
execute unless score #icew.load icew.loadScoreboard matches 1 if entity @p run function icewarrior:initialization/init_scoreboard

schedule clear icewarrior:initialization/check_player