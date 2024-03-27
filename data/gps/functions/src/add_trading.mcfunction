tag @s add gps.customTradeSetup

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 20, Tags: ["RandGps", "pass"]}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 20, Tags: ["RandGps"]}
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 20, Tags: ["RandGps"]}
tag @e[tag=RandGps,sort=random,limit=1] add selected

execute if entity @e[tag=RandGps,tag=pass,tag=selected] run data modify entity @s Offers.Recipes append value {maxUses: 1, sell: {id: "minecraft:compass", Count: 1b, tag: { display:{Name:'{text:GPS,italic:false}', Lore: ["\"Futuristic device\"", "\"Shows exact location\""]}, Enchantments: [{id: unbreaking, lvl: 1}], GPS: 1b, HideFlags: 1b }}, buy: {id: "minecraft:emerald", Count: 24b}}

kill @e[tag=RandGps]

# /data merge entity @e[type=minecraft:wandering_trader,limit=1,sort=nearest] {NoAI: true}
# /summon minecraft:wandering_trader ~ ~ ~ {NoAI:true}
# /tag @e[type=minecraft:wandering_trader,limit=1,sort=nearest] remove gps.customTradeSetup
# {id: "minecraft:compass", Count: 1b, tag: { display:{Name:"{\"text\":\"GPS\",\"italic\":\"false\"}", Lore: ["\"Futuristic device\"", "\"Shows exact location\""]}, Enchantments: [{id: unbreaking, lvl: 1}], GPS: 1b, HideFlags: 1b }}
