execute if data storage itemdb container[0].buy run data modify entity @s Offers.Recipes[-1] merge from storage itemdb container[0]
data modify entity @s Offers.Recipes prepend from entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]

data remove storage itemdb container[0]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:versioner/villager/get_loop