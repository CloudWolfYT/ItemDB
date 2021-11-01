execute store result score #temp itemdb run data get storage itemdb temp[-1][0]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][1]

execute if score #temp itemdb = #a itemdb if score #temp1 itemdb = #b itemdb run function itemdb:smither/search/found

data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:smither/search/loop