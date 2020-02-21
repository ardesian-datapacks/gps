execute store result score #new_x gps_x run data get entity @s Pos[0] 1
execute store result score #new_y gps_y run data get entity @s Pos[1] 1
execute store result score #new_z gps_z run data get entity @s Pos[2] 1
execute store result score #new_deg gps_deg run data get entity @s Rotation[0] 1

scoreboard players operation @s gps_x = #new_x gps_x
scoreboard players operation @s gps_y = #new_y gps_y
scoreboard players operation @s gps_z = #new_z gps_z
scoreboard players operation @s gps_deg = #new_deg gps_deg
# scoreboard players operation @s gps_look =
# Show orientation

title @s actionbar [{"score":{"name":"@s","objective":"gps_x"},"color":"red"}, {"text": ", ", "color": "black"}, {"score":{"name":"@s","objective":"gps_y"},"color":"dark_green"}, {"text": ", ", "color": "black"}, {"score":{"name":"@s","objective":"gps_z"},"color":"blue"}]
