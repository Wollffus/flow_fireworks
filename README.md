# flow_fireworks
Want to add some fun items to your server? This resource will add 3 different style fireworks
as well as 2 different style smoke signals.
/Command use is standalone and may be used on any framework.
Item use is currently setup for RedEM:RP only


- Single use firework
- Barrage firework
- Finale firework
- Smoke signal
- USA smoke signal

## Requirements (if item use)
|redemrp base, redemrp_inventory|

## Requirements (if /command use)
|Standalone|

## Installation
- Clone/download the resource folder into your server's resources folder
- Add `flow_fireworks` in server.cfg

## /commands
Use default command `/smokecloud` to create 3 fires with Red, White, and Blue smoke. (Time can be changed in config)
Use default command `/firework` to shoot 2 fireworks in the air. (can be changed with config multiplier)
Use default command `/bfirework` to shoot a barrage of 10 fireworks in the air. (can be changed with config multiplier)
Use default command `/ffirework` to shoot an arsenal of 100 fireworks in the air (can be changed with config multiplier)

## RedemRP Inventory
```lua
    ["bfirework"] =
    {
        label = "Barrage Firework",
        description = "Explosive fun, packaged to give a slow showing",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 20,
        imgsrc = "items/bfirework.png",
        type = "item_standard",
    },

    ["firework"] =
    {
        label = "Firework",
        description = "Explosive fun, packaged to take out fingers",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 20,
        imgsrc = "items/firework.png",
        type = "item_standard",
    },

    ["ffirework"] =
    {
        label = "Grand Finale",
        description = "Explosive fun, for that final one of the night or bigger shows",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 20,
        imgsrc = "items/ffirework.png",
        type = "item_standard",
    },

    ["smokesignal"] =
    {
        label = "Smoke-Signal",
        description = "Are you lost? This is needed!",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 20,
        imgsrc = "items/smokesignal.png",
        type = "item_standard",
    },

    ["usasmokesignal"] =
    {
        label = "USA Smoke-Signal",
        description = "Are you celebrating? This is needed!",
        weight = 0.1,
        canBeDropped = true,
        canBeUsed = true,
        requireLvl = 0,
        limit = 20,
        imgsrc = "items/usasmokesignal.png",
        type = "item_standard",
    },
```

## VORP Inventory
INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('firework', 'Firework', 10, 1, 'item_standard', 1)
INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('bfirework', 'Barrage Firework', 10, 1, 'item_standard', 1);;
INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ffirework', 'Grand Finale', 10, 1, 'item_standard', 1);
INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('smokesignal', 'Smoke-Signal', 10, 1, 'item_standard', 1);
INSERT INTO `items` (`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('usesmokesignal', 'USA Smoke-Signal', 10, 1, 'item_standard', 1);

## Using the Multiplier in the config.lua

Default Configurations:
`Config.Wollffus = 1000` -- Single Use Multiplier
`Config.Jesikuh = 1000` -- Barrage Multiplier
`Config.FranknTank = 1000` -- Finale Multiplier

This number changes the default value for Fireworks, Barrage Fireworks, and Finale Fireworks.
You can increase this number by 1000 at a time. For example, from 1000 to 2000, 3000, 4000, 5000, or 6000 etc up to 20000
(probably works past that as well, but we stopped testing at 20000)



Firework - By default shoots 2 fireworks; every 1000 added after this fires 2 more fireworks
Example: If `Config.Wollffus = 1000` is set to `Config.Wollffus = 2000`, rather than 2 fireworks it will be 4
If `Config.Wollffus = 1000` is set to `Config.Wollffus = 5000`, rather than 2 fireworks it will be 10 fireworks
etc.

Barrage Firework - By default shoots 10 fireworks; every 1000 added after this fires 10 more fireworks
Example: If `Config.Jesikuh = 1000` is set to `Config.Jesikuh = 2000`, rather than 10 fireworks it will be 20
If `Config.Jesikuh = 1000` is set to `Config.Jesikuh = 5000`, rather than 10 fireworks it will be 50 fireworks
etc.

Barrage Firework - By default shoots 100 fireworks; every 1000 added after this fires 100 more fireworks
Example: If `Config.Jesikuh = 1000` is set to `Config.Jesikuh = 2000`, rather than 100 fireworks it will be 200
If `Config.Jesikuh = 1000` is set to `Config.Jesikuh = 5000`, rather than 100 fireworks it will be 500 fireworks
etc.