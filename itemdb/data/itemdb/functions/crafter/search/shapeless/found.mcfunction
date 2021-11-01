execute store result score #temp itemdb run data get storage itemdb temp[-1][1][0]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][1][1]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][1][2]
execute store result score #temp3 itemdb run data get storage itemdb temp[-1][1][3]
execute store result score #temp4 itemdb run data get storage itemdb temp[-1][1][4]
execute store result score #temp5 itemdb run data get storage itemdb temp[-1][1][5]
execute store result score #temp6 itemdb run data get storage itemdb temp[-1][1][6]
execute store result score #temp7 itemdb run data get storage itemdb temp[-1][1][7]
execute store result score #temp8 itemdb run data get storage itemdb temp[-1][1][8]

execute if score #ica itemdb >= #temp itemdb if score #icb itemdb >= #temp1 itemdb if score #icc itemdb >= #temp2 itemdb if score #icd itemdb >= #temp3 itemdb if score #ice itemdb >= #temp4 itemdb if score #icf itemdb >= #temp5 itemdb if score #icg itemdb >= #temp6 itemdb if score #ich itemdb >= #temp7 itemdb if score #ici itemdb >= #temp8 itemdb run scoreboard players operation out itemdb = #loop itemdb
execute if score out itemdb matches 0.. run data modify storage itemdb out set from storage itemdb temp[-1]
execute if score out itemdb matches 0.. run scoreboard players set out1 itemdb 2
execute if score out itemdb matches 0.. run scoreboard players remove out itemdb 1
execute if score out itemdb matches 0.. run scoreboard players set #loop itemdb -1

#execute if score out itemdb matches 0.. run say yes