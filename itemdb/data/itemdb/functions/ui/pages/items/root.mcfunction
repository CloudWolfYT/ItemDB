execute unless data storage itemdb temp[{Slot:0b}] run function itemdb:ui/pages/vanilla/load
execute unless data storage itemdb temp[{Slot:9b}] run function itemdb:ui/pages/items/load
execute unless data storage itemdb temp[{Slot:18b}] run function itemdb:ui/pages/recipes/load

execute if score #bool itemdb matches 0 run function itemdb:ui/pages/items/refresh