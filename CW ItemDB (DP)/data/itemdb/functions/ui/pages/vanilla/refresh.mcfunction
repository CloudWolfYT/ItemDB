scoreboard players set #bool itemdb 1

execute if score @s itemdb_search matches 1.. run function itemdb:ui/pages/vanilla/search

execute unless data storage itemdb temp[{Slot:8b}] run function itemdb:ui/pages/vanilla/id_down
execute unless data storage itemdb temp[{Slot:26b}] run function itemdb:ui/pages/vanilla/id_up

function itemdb:ui/pages/vanilla/load