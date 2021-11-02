execute store result score #temp itemdb run data get storage itemdb vanilla
scoreboard players remove #temp itemdb 21
execute if score @s itemdb_id <= #temp itemdb run scoreboard players add @s itemdb_id 21

## shift to end
scoreboard players add #temp itemdb 21
scoreboard players operation #temp1 itemdb = #temp itemdb
scoreboard players operation #temp itemdb %= #21 itemdb
scoreboard players operation #temp1 itemdb -= #temp itemdb
execute if score #playerio itemdb matches 2 run scoreboard players operation @s itemdb_id = #temp1 itemdb