scoreboard players set in itemdb 0
execute unless data storage itemdb temp[{Slot:1b}] run scoreboard players set in itemdb 1
execute unless data storage itemdb temp[{Slot:2b}] run scoreboard players set in itemdb 2
execute unless data storage itemdb temp[{Slot:3b}] run scoreboard players set in itemdb 3
execute unless data storage itemdb temp[{Slot:4b}] run scoreboard players set in itemdb 4
execute unless data storage itemdb temp[{Slot:5b}] run scoreboard players set in itemdb 5
execute unless data storage itemdb temp[{Slot:6b}] run scoreboard players set in itemdb 6
execute unless data storage itemdb temp[{Slot:7b}] run scoreboard players set in itemdb 7
execute unless data storage itemdb temp[{Slot:10b}] run scoreboard players set in itemdb 8
execute unless data storage itemdb temp[{Slot:11b}] run scoreboard players set in itemdb 9
execute unless data storage itemdb temp[{Slot:12b}] run scoreboard players set in itemdb 10
execute unless data storage itemdb temp[{Slot:13b}] run scoreboard players set in itemdb 11
execute unless data storage itemdb temp[{Slot:14b}] run scoreboard players set in itemdb 12
execute unless data storage itemdb temp[{Slot:15b}] run scoreboard players set in itemdb 13
execute unless data storage itemdb temp[{Slot:16b}] run scoreboard players set in itemdb 14
execute unless data storage itemdb temp[{Slot:19b}] run scoreboard players set in itemdb 15
execute unless data storage itemdb temp[{Slot:20b}] run scoreboard players set in itemdb 16
execute unless data storage itemdb temp[{Slot:21b}] run scoreboard players set in itemdb 17
execute unless data storage itemdb temp[{Slot:22b}] run scoreboard players set in itemdb 18
execute unless data storage itemdb temp[{Slot:23b}] run scoreboard players set in itemdb 19
execute unless data storage itemdb temp[{Slot:24b}] run scoreboard players set in itemdb 20
execute unless data storage itemdb temp[{Slot:25b}] run scoreboard players set in itemdb 21
#tellraw @a {"nbt":"temp","storage":"itemdb"}
execute if score in itemdb matches 1.. run function itemdb:ui/pages/items/to_recipe/search