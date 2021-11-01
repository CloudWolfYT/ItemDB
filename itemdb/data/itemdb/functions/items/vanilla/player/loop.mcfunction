execute unless data storage itemdb temp[-1].tag.has_id run function itemdb:items/vanilla/player/load

scoreboard players remove #loop itemdb 1
data remove storage itemdb temp[-1]
execute if score #loop itemdb matches 1.. run function itemdb:items/vanilla/player/loop