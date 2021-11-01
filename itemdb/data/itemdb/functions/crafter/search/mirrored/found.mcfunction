execute store result score #temp itemdb run data get storage itemdb temp[-1][1][0][0]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][1][0][1]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][1][0][2]
execute store result score #temp3 itemdb run data get storage itemdb temp[-1][1][1][0]
execute store result score #temp4 itemdb run data get storage itemdb temp[-1][1][1][1]
execute store result score #temp5 itemdb run data get storage itemdb temp[-1][1][1][2]
execute store result score #temp6 itemdb run data get storage itemdb temp[-1][1][2][0]
execute store result score #temp7 itemdb run data get storage itemdb temp[-1][1][2][1]
execute store result score #temp8 itemdb run data get storage itemdb temp[-1][1][2][2]

execute if score #mca itemdb >= #temp itemdb if score #mcb itemdb >= #temp1 itemdb if score #mcc itemdb >= #temp2 itemdb if score #mcd itemdb >= #temp3 itemdb if score #mce itemdb >= #temp4 itemdb if score #mcf itemdb >= #temp5 itemdb if score #mcg itemdb >= #temp6 itemdb if score #mch itemdb >= #temp7 itemdb if score #mci itemdb >= #temp8 itemdb run scoreboard players operation out itemdb = #loop itemdb
execute if score out itemdb matches 0.. if score #mirror itemdb matches 0 run function itemdb:crafter/search/mirrored/type0
execute if score out itemdb matches 0.. if score #mirror itemdb matches 1 run function itemdb:crafter/search/mirrored/type1
#execute if score out itemdb matches 0.. run data modify storage itemdb out set from storage itemdb temp[-1]
execute if score out itemdb matches 0.. run scoreboard players set out1 itemdb 1
execute if score out itemdb matches 0.. run scoreboard players set #loop itemdb -1
execute if score out itemdb matches 0.. run scoreboard players remove out itemdb 1