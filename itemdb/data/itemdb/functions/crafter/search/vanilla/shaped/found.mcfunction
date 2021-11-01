
execute store result score #temp itemdb run data get storage itemdb temp[-1][1][0][0]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][1][0][1]
execute store result score #temp2 itemdb run data get storage itemdb temp[-1][1][0][2]
execute store result score #temp3 itemdb run data get storage itemdb temp[-1][1][1][0]
execute store result score #temp4 itemdb run data get storage itemdb temp[-1][1][1][1]
execute store result score #temp5 itemdb run data get storage itemdb temp[-1][1][1][2]
execute store result score #temp6 itemdb run data get storage itemdb temp[-1][1][2][0]
execute store result score #temp7 itemdb run data get storage itemdb temp[-1][1][2][1]
execute store result score #temp8 itemdb run data get storage itemdb temp[-1][1][2][2]

execute if score #ca itemdb >= #temp itemdb if score #cb itemdb >= #temp1 itemdb if score #cc itemdb >= #temp2 itemdb if score #cd itemdb >= #temp3 itemdb if score #ce itemdb >= #temp4 itemdb if score #cf itemdb >= #temp5 itemdb if score #cg itemdb >= #temp6 itemdb if score #ch itemdb >= #temp7 itemdb if score #ci itemdb >= #temp8 itemdb run scoreboard players operation out itemdb = #loop itemdb
execute if score out itemdb matches 0.. run data modify storage itemdb out set from storage itemdb temp[-1]
execute if score out itemdb matches 0.. run scoreboard players set out1 itemdb 3
execute if score out itemdb matches 0.. run scoreboard players set out2 itemdb 1
execute if score out itemdb matches 0.. run scoreboard players remove out itemdb 1
execute if score out itemdb matches 0.. run scoreboard players set #loop itemdb -1