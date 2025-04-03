tag @s add gps.customTradeSetup

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:["RandGps","pass"]}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:["RandGps"]}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:20,Tags:["RandGps"]}
tag @e[tag=RandGps,sort=random,limit=1] add selected

execute if entity @e[tag=RandGps,tag=pass,tag=selected] run tag @s add gps.hasGps
kill @e[tag=RandGps]

# execute as @s run tellraw @a "Start"
# execute as @s[tag=gps.hasGps] run tellraw @a {"text":"Selected","color":"green"}
execute as @s[tag=gps.hasGps] run data modify entity @s Offers.Recipes append value {maxUses:1,sell:{id:"minecraft:emerald",count:1b},buy:{id:"minecraft:emerald",count:24b}}
execute as @s[tag=gps.hasGps] run loot spawn ~ ~ ~ loot gps:gps
execute as @s[tag=gps.hasGps] run tag @e[type=item,sort=nearest,limit=1] add gpsLoot
execute as @s[tag=gps.hasGps] run data modify entity @s Offers.Recipes[-1].sell set from entity @e[tag=gpsLoot,limit=1] Item
# execute as @s run tellraw @a "Done"

kill @e[tag=gpsLoot]
