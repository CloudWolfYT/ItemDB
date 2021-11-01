scoreboard players set #bool itemdb 1

execute if score @s itemdb_search matches 1.. run function itemdb:ui/pages/items/search

scoreboard players set #bool1 itemdb 0
execute unless data storage itemdb temp[{Slot:8b}] run function itemdb:ui/pages/items/id_down
execute unless data storage itemdb temp[{Slot:26b}] run function itemdb:ui/pages/items/id_up

function itemdb:ui/pages/items/load