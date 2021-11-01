execute store result score @s itemdb run data get storage itemdb out[0][0]
execute store result score @s itemdb_id run data get storage itemdb out[1][0]
execute store result score @s itemdb_menu run data get storage itemdb out[2][0]
data remove storage itemdb out[0][0]
data remove storage itemdb out[1][0]
data remove storage itemdb out[2][0]

execute if score @s itemdb matches 0 run kill @s