execute if score @s itemdb_id < .recipes itemdb run scoreboard players add @s itemdb_id 1
execute if score #playerio itemdb matches 2 run scoreboard players operation @s itemdb_id = .recipes itemdb
execute if score #playerio itemdb matches 2 run scoreboard players remove @s itemdb_id 1

scoreboard players set #bool1 itemdb 1