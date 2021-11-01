# deep memory
data remove storage itemdb:brewer list
data remove storage itemdb:smither list
data remove storage itemdb:recipes list
data remove storage itemdb:recipes min
data remove storage itemdb:items nbt

# volatile memory
data remove storage itemdb_buffer:items nbt
data remove storage itemdb_buffer:recipes list
data remove storage itemdb_buffer:recipes min
data remove storage itemdb vanilla_recipes
data remove storage itemdb vanilla
data remove storage itemdb container
data remove storage itemdb in
data remove storage itemdb in1
data remove storage itemdb out
data remove storage itemdb temp
data remove storage itemdb temp1
data remove storage itemdb shaped
data remove storage itemdb hold
data remove storage itemdb hold1
data remove storage itemdb hold2
data remove storage itemdb tags

# objectives
scoreboard objectives remove itemdb
scoreboard objectives remove itemdb_page
scoreboard objectives remove itemdb_id
scoreboard objectives remove itemdb_search
scoreboard objectives remove itemdb_open
scoreboard objectives remove itemdb_open1
scoreboard objectives remove itemdb_menu
scoreboard objectives remove itemdb_ui
scoreboard objectives remove itemdb_v_vanilla
scoreboard objectives remove itemdb_v_relog
scoreboard objectives remove itemdb_v_opene
scoreboard objectives remove itemdb_v_open
scoreboard objectives remove itemdb_v_open1
scoreboard objectives remove itemdb_v_open2
scoreboard objectives remove itemdb_v_open3
scoreboard objectives remove itemdb_v_open4
scoreboard objectives remove itemdb_v_open5
scoreboard objectives remove itemdb_v_open6
scoreboard objectives remove itemdb_v_open7
scoreboard objectives remove itemdb_v_open8
scoreboard objectives remove itemdb_v_open9
scoreboard objectives remove itemdb_v_open10

# entities
execute at @e[tag=itemdb] run data remove block ~ ~ ~ Items
execute at @e[tag=itemdb] run setblock ~ ~ ~ air
kill @e[tag=itemdb]

# block manipulations
setblock 69 0 69 bedrock
setblock 69 1 69 bedrock
setblock 69 2 69 bedrock
setblock 69 -1 69 bedrock
setblock 70 0 69 bedrock
setblock 70 1 69 bedrock
setblock 70 2 69 bedrock
setblock 69 0 70 bedrock
setblock 69 1 70 bedrock
setblock 69 2 70 bedrock
setblock 69 0 68 bedrock
setblock 69 1 68 bedrock
setblock 69 2 68 bedrock
setblock 68 0 69 bedrock
setblock 68 1 69 bedrock
setblock 68 2 69 bedrock
setblock 69 3 69 bedrock

forceload remove 69 69

tellraw @s {"text":"Item Database Uninstalled","color":"red"}