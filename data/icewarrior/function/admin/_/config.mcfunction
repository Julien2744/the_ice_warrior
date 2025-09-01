#filler to only show the ui
playsound minecraft:ui.button.click neutral @s
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]
tellraw @s [{"text":" "}]

#upper text
tellraw @s [{"color":"#9FC0FA","text":"❄"},{"bold":true,"color":"aqua","text":" The Ice Warrior "},{"bold":false,"color":"#9FC0FA","text":"❄"},{"bold":false,"color":"dark_gray","text":" r1.1 mc1.21.1"},{"bold":false,"color":"aqua","text":" config:"}]
tellraw @s [{"text":" "}]

#no_bossbar
execute if score #icew.config icew.config.bossbar matches 0 run tellraw @s [{"color":"gray","text":" - no bossbar: "},{"color":"dark_gray","text":"["},{"bold":true,"clickEvent":{"action":"run_command","value":"/function icewarrior:admin/config/no_bossbar {state:1}"},"color":"red","text":"off"},{"color":"dark_gray","text":"]"}]
execute if score #icew.config icew.config.bossbar matches 1 run tellraw @s [{"color":"gray","text":" - no bossbar: "},{"color":"dark_gray","text":"["},{"bold":true,"clickEvent":{"action":"run_command","value":"/function icewarrior:admin/config/no_bossbar {state:0}"},"color":"green","text":"on"},{"color":"dark_gray","text":"]"}]
tellraw @s [{"text":" "}]

#can_change_phase
execute if score #icew.config icew.config.can_change_phase matches 0 run tellraw @s [{"color":"gray","text":" - can change phase: "},{"color":"dark_gray","text":"["},{"bold":true,"clickEvent":{"action":"run_command","value":"/function icewarrior:admin/config/can_change_phase {state:1}"},"color":"red","text":"false"},{"color":"dark_gray","text":"]"}]
execute if score #icew.config icew.config.can_change_phase matches 1 run tellraw @s [{"color":"gray","text":" - can change phase: "},{"color":"dark_gray","text":"["},{"bold":true,"clickEvent":{"action":"run_command","value":"/function icewarrior:admin/config/can_change_phase {state:0}"},"color":"green","text":"true"},{"color":"dark_gray","text":"]"}]
tellraw @s [{"text":" "}]

#set_change_phase
tellraw @s [{"color":"gray","text":" - change phase: "},{"clickEvent":{"action":"suggest_command","value":"/function icewarrior:admin/config/change_phase {value:INSERT_VALUE_HERE}"},"color":"#3061FF","score":{"name":"#icew.config","objective":"icew.config.change_phase"}},{"color":"#3061FF","text":"%"},{"color":"red","text":" hp"}]
tellraw @s [{"text":" "}]

#set_phase1_max_combo
tellraw @s [{"color":"gray","text":" - phase 1 max combo: "},{"clickEvent":{"action":"suggest_command","value":"/function icewarrior:admin/config/phase1_combo {value:INSERT_VALUE_HERE}"},"color":"#3061FF","score":{"name":"#icew.config","objective":"icew.config.phase1_combo"}}]
tellraw @s [{"text":" "}]

#set_phase2_max_combo
tellraw @s [{"color":"gray","text":" - phase 2 max combo: "},{"clickEvent":{"action":"suggest_command","value":"/function icewarrior:admin/config/phase2_combo {value:INSERT_VALUE_HERE}"},"color":"#3061FF","score":{"name":"#icew.config","objective":"icew.config.phase2_combo"}}]
tellraw @s [{"text":" "}]