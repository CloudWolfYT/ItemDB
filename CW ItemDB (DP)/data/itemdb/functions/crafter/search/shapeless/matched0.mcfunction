say matched0

execute store result score #temp itemdb run data get storage itemdb temp[-1][0][1]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][0][2]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][0][3]

execute if score #temp itemdb = #ib itemdb if score #temp1 itemdb = #ic itemdb if score #temp2 itemdb = #id itemdb run function itemdb:crafter/search/shapeless/matched1