data remove storage itemdb temp[{tag:{itemdb:{id:0}}}]

execute store result score #loop itemdb run data get storage itemdb temp

function itemdb:ui/pages/items/save_loop