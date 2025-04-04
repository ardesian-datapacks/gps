# /loot give @p loot gps:gps
execute as @a[predicate=gps:holding_gps] run function gps:src/check_location

execute as @e[type=minecraft:wandering_trader,tag=!gps.customTradeSetup] run function gps:src/add_trading
