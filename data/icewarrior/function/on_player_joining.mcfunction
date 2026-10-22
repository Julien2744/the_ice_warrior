#this is executed every time the server reload and when a player is detected

schedule clear icewarrior:initialization/check_player

#check if the dependency is installed #0: false ; 1: true
scoreboard objectives add icew.dependency dummy
scoreboard players set #icew.global icew.dependency 0

function icewarrior:initialization/check_dependency

execute unless score #icew.global icew.dependency matches 1 \
        run return run function icewarrior:initialization/no_dependency_warning

#initialize scoreboard only once if depedency is checked true
execute unless score #icew.load icew.loadScoreboard matches 1 if entity @p run \
    function icewarrior:initialization/init_scoreboard