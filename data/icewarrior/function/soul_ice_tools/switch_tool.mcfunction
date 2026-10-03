advancement revoke @s only icewarrior:use_soul_ice_tool

# get tool damage
execute store result score @s icew.player.previous_tool_dmg run \
    data get entity @s SelectedItem.components."minecraft:damage"

# shovel -> pickaxe
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Shovel"}}}] positioned ~ ~1.15 ~ run \
    function icewarrior:admin/item/soul_ice_pickaxe
execute if entity @s[gamemode=creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Shovel"}}}] run \
    return run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:item_name":"Soul Ice Pickaxe","minecraft:item_model":"icewarrior:soul_ice_pickaxe","minecraft:tool":{rules:[{blocks:"#minecraft:mineable/pickaxe"}]}}}

# pickaxe -> axe
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Pickaxe"}}}] positioned ~ ~1.15 ~ run \
    function icewarrior:admin/item/soul_ice_axe
execute if entity @s[gamemode=creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Pickaxe"}}}] run \
    return run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:item_name":"Soul Ice Axe","minecraft:item_model":"icewarrior:soul_ice_axe","minecraft:tool":{rules:[{blocks:"#minecraft:mineable/axe"}]}}}

# axe -> hoe
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Axe"}}}] positioned ~ ~1.15 ~ run \
    function icewarrior:admin/item/soul_ice_hoe
execute if entity @s[gamemode=creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Axe"}}}] run \
    return run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:item_name":"Soul Ice Hoe","minecraft:item_model":"icewarrior:soul_ice_hoe","minecraft:tool":{rules:[{blocks:"#minecraft:mineable/hoe"}]}}}

# hoe -> pickaxe
execute if entity @s[gamemode=!creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Hoe"}}}] positioned ~ ~1.15 ~ run \
    function icewarrior:admin/item/soul_ice_shovel
execute if entity @s[gamemode=creative,nbt={SelectedItem:{components:{"minecraft:item_name":"Soul Ice Hoe"}}}] run \
    return run item modify entity @s weapon.mainhand {type:"minecraft:set_components",components:{"minecraft:item_name":"Soul Ice Shovel","minecraft:item_model":"icewarrior:soul_ice_shovel","minecraft:tool":{rules:[{blocks:"#minecraft:mineable/shovel"}]}}}

# will only execute if the player isn't in creative (get the previous tool damage)
# set new tool the damage
execute store result entity \
    @n[type=item,distance=..1.5,nbt={Item:{components:{"minecraft:custom_data":{icewarrior.item:"soul_ice_tool"}}}}] \
    Item.components."minecraft:damage" float 1 run \
        scoreboard players get @s icew.player.previous_tool_dmg

scoreboard players reset @s icew.player.previous_tool_dmg