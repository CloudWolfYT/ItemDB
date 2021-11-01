execute store result score #temp1 itemdb run data get storage itemdb temp[-1].Count
scoreboard players operation #temp itemdb += #temp1 itemdb
data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:ui/get_inv_loop