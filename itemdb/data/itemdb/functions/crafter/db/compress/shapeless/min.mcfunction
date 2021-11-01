data modify storage itemdb in[0] append value 0
data modify storage itemdb in[1] append value 0
data modify storage itemdb in[2] append value 0

execute store result storage itemdb in[0][-1] int 1 run scoreboard players get @s itemdb
execute store result storage itemdb in[1][-1] int 1 run scoreboard players get @s itemdb_id
execute store result storage itemdb in[2][-1] int 1 run scoreboard players get @s itemdb_menu
kill @s
scoreboard players set #min itemdb 99999