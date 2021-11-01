execute store result score #temp itemdb run data get storage itemdb temp[-1][0][0][1]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][0][1][0]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][0][1][1]
execute if score #temp itemdb = #b itemdb if score #temp1 itemdb = #d itemdb if score #temp2 itemdb = #e itemdb run function itemdb:crafter/search/shaped/matched1