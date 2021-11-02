execute store result score #temp itemdb run data get storage itemdb temp[-1][0][0][2]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][0][1][2]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][0][2][0]
execute store result score #temp3 itemdb run data get storage itemdb temp[-1][0][2][1]
execute store result score #temp4 itemdb run data get storage itemdb temp[-1][0][2][2]
execute if score #temp itemdb = #c itemdb if score #temp1 itemdb = #f itemdb if score #temp2 itemdb = #g itemdb if score #temp3 itemdb = #h itemdb if score #temp4 itemdb = #i itemdb run function itemdb:crafter/search/shaped/found