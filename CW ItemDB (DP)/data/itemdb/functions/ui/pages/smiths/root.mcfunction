execute unless data storage itemdb temp[{Slot:0b}] run function itemdb:ui/pages/brews/load
execute unless data storage itemdb temp[{Slot:9b}] run function itemdb:ui/pages/smiths/load
execute unless data storage itemdb temp[{Slot:18b}] run function itemdb:ui/pages/furnace/load

execute if score #bool itemdb matches 0 run function itemdb:ui/pages/smiths/refresh