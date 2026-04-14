# The Ice Warrior

## Description

### Minecraft datapack that add an ice themed boss

> [!WARNING]
> This datapack require a resourcepack [link](https://modrinth.com/datapack/the-ice-warrior/version/r1.0_mc1.21.1)
>
> **Require the mod [launch-command](https://modrinth.com/mod/launch-command)**
>
> Current version work for `Minecraft 1.21.1`

All animations in this datapack where made using [Animated Java](https://animated-java.dev/)

The `animated_java` files are not included due to how many there are (1500+ files), and because the files are 99% models and animations.
You can found them on the [modrinth](https://modrinth.com/datapack/the-ice-warrior) page where you can download the datapack

## Features

**This datapack has a config wich you can access it with `/function icewarrior:admin/_/config`**

### **<ins>How to start:</ins>**

First of all, theee is **new advancements that you can follow** to check everything that the datapack has to offer !

To find the boss, you will need to find the `ice_guard_tower` structure located in an `ice_spikes` biome.

> [!NOTE]
> You can craft a map that will show you the structure by dropping a `Woodland explorer map` inside a `powder_snow`

![datapack priority](https://github.com/Julien2744/the_ice_warrior/blob/master/github_image/cold_map_craft.jpg)

When entering the tower you will see the ice warrior encased in ice. To release him you will need to use a lava bucket in order to melt the ice (right-click).

### **<ins>Boss:</ins>**

- 2 phases
- 170 health
- everythime you get hit his combo counter will go up, dodging an attack will reset it to 0.

**First phase:** The boss will attack using his ice claw

![datapack priority](https://github.com/Julien2744/the_ice_warrior/blob/master/github_image/phase1.png)

**Second phase:** The boss will attack using his trident (activate on 50% max hp)

![datapack priority](https://github.com/Julien2744/the_ice_warrior/blob/master/github_image/phase2.png)

**Master:** Strongest varient of the boss, can only be summoned by first defeating an enraged Ice Warrior

![datapack priority](https://github.com/Julien2744/the_ice_warrior/blob/master/github_image/master.png)

> [!NOTE]
> The boss isn't that strong, and all his attacks are dodgeable. I personally recommend to face him with a full set of diamond armor.

> [!NOTE]
> You can enrage an Ice Warrior by summoning one while having an `Ice Warrior Head` near it on the ground

The boss cannot target/damage mobs that have the tag `icew.immune`.

You can summon the boss anywere in your wold using the command `/function icewarrior:admin/_/summon`

Or you can summon the boss encased in ice with `/function icewarrior:boss_summoner/summon`

Because working with vanilla mob with datapack can be an absolute nightmare, all Ice Warrior share the same target.

## Other informations

Because the boss use a stray as its hitbox/health, any mod that modify stray can affect the boss and ***might*** cause issues. Hoewer I already fixed this issue for some mod, if those allowed me to blacklist the mob from getting any modification.

Also because the boss use a stray as its hitbox/health, he has some difficulty when attacking mob with wide hitbox.

You can modify:
- items that can melt the boss ice in `data/icewarrior/tags/item/can_melt_ice_room.json`
- mobs that aggro the boss in `data/icewarrior/tags/entity_type/aggro_boss.json`
- entities that can be parried in `data/icewarrior/tags/entity_type/can_parry.json`