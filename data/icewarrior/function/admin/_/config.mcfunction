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

#upper text
tellraw @s [{"color":"#9FC0FA","text":"❄"},{"bold":true,"color":"aqua","text":" The Ice Warrior "},{"bold":false,"color":"#9FC0FA","text":"❄"},{"bold":false,"color":"dark_gray","text":" b3 mc26.3"},{"bold":false,"color":"aqua","text":" config:"}]
tellraw @s [{"text":" "}]

#no_bossbar
execute if score #icew.config icew.config.bossbar matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Bossbar : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function icewarrior:config/bossbar {state:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Stop the display of the bossbar"}]},"text":"ⓘ"}]
execute if score #icew.config icew.config.bossbar matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🚫 "},{"color":"white","text":"Bossbar : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function icewarrior:config/bossbar {state:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Stop the display of the bossbar"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

#can_change_phase
execute if score #icew.config icew.config.can_change_phase matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"↑ "},{"color":"white","text":"Can change phase : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function icewarrior:config/can_change_phase {state:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Prevent the boss from changing phase"}]},"text":"ⓘ"}]
execute if score #icew.config icew.config.can_change_phase matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"↑ "},{"color":"white","text":"Can change phase : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function icewarrior:config/can_change_phase {state:0}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Prevent the boss from changing phase"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

#set_change_phase
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"↑ "},{"color":"white","text":"Change phase at : "},{"click_event":{"action":"suggest_command","command":"/function icewarrior:config/change_phase {value:...}"},"color":"#005FEE","score":{"name":"#icew.config","objective":"icew.config.change_phase"},"underlined":true},{"color":"#005FEE","italic":false,"text":"% hp  "},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How low does the boss need to be in order to change phase\ndefault 50"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

#set_phase1_max_combo
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🔪 "},{"color":"white","text":"Phase 1 max combo : "},{"click_event":{"action":"suggest_command","command":"/function icewarrior:config/phase1_combo {value:...}"},"color":"#005FEE","score":{"name":"#icew.config","objective":"icew.config.phase1_combo"},"underlined":true},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How many combo does the boss need to have in order to use his ultimate\ndefault 7"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

#set_phase2_max_combo
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"🔱 "},{"color":"white","text":"Phase 2 max combo : "},{"click_event":{"action":"suggest_command","command":"/function icewarrior:config/phase2_combo {value:...}"},"color":"#005FEE","score":{"name":"#icew.config","objective":"icew.config.phase2_combo"},"underlined":true},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How many combo does the boss need to have in order to use his ultimate\ndefault 5"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

#set_master_max_combo
tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"❄ "},{"color":"white","text":"Master max combo : "},{"click_event":{"action":"suggest_command","command":"/function icewarrior:config/phase3_combo {value:...}"},"color":"#005FEE","score":{"name":"#icew.config","objective":"icew.config.phase3_combo"},"underlined":true},{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"How many combo does the boss need to have in order to use his ultimate\ndefault 10"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]

#boss_regen
execute if score #icew.config icew.config.boss_regen matches 0 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"💕 "},{"color":"white","text":"Boss regen : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function icewarrior:config/boss_regen {state:1}"},"color":"white","sprite":"widget/checkbox_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Prevent the boss from regening"}]},"text":"ⓘ"}]
execute if score #icew.config icew.config.boss_regen matches 1 \
    run tellraw @s [{"color":"dark_gray","text":"   - "},{"color":"gray","text":"💕 "},{"color":"white","text":"Boss regen : "},{"atlas":"minecraft:gui","click_event":{"action":"suggest_command","command":"/function icewarrior:config/boss_regen {state:1}"},"color":"white","sprite":"widget/checkbox_selected_highlighted"},"  ",{"color":"#005FEE","hover_event":{"action":"show_text","value":[{"text":"Prevent the boss from regening"}]},"text":"ⓘ"}]
tellraw @s [{"text":" "}]