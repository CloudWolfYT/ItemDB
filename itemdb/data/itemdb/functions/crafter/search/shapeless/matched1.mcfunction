execute store result score #temp itemdb run data get storage itemdb temp[-1][0][4]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][0][5]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][0][6]
execute store result score #temp3 itemdb run data get storage itemdb temp[-1][0][7]
execute store result score #temp4 itemdb run data get storage itemdb temp[-1][0][8]

execute if score #temp itemdb = #ie itemdb if score #temp1 itemdb = #if itemdb if score #temp2 itemdb = #ig itemdb if score #temp3 itemdb = #ih itemdb if score #temp4 itemdb = #ii itemdb run function itemdb:crafter/search/shapeless/found
