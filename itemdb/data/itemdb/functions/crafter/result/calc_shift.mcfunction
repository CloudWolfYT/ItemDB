execute store result score #ca itemdb run data get storage itemdb in[1][0]
execute store result score #cb itemdb run data get storage itemdb in[1][1]
execute store result score #cc itemdb run data get storage itemdb in[1][2]
execute store result score #cd itemdb run data get storage itemdb in[1][3]
execute store result score #ce itemdb run data get storage itemdb in[1][4]
execute store result score #cf itemdb run data get storage itemdb in[1][5]
execute store result score #cg itemdb run data get storage itemdb in[1][6]
execute store result score #ch itemdb run data get storage itemdb in[1][7]
execute store result score #ci itemdb run data get storage itemdb in[1][8]


execute store result score #temp itemdb run data get storage itemdb in1[1][0]
execute store result score #temp1 itemdb run data get storage itemdb in1[1][1]
execute store result score #temp2 itemdb run data get storage itemdb in1[1][2]
execute store result score #temp3 itemdb run data get storage itemdb in1[1][3]
execute store result score #temp4 itemdb run data get storage itemdb in1[1][4]
execute store result score #temp5 itemdb run data get storage itemdb in1[1][5]
execute store result score #temp6 itemdb run data get storage itemdb in1[1][6]
execute store result score #temp7 itemdb run data get storage itemdb in1[1][7]
execute store result score #temp8 itemdb run data get storage itemdb in1[1][8]

scoreboard players set #min itemdb 64
scoreboard players operation #temp9 itemdb = #ca itemdb
scoreboard players operation #temp9 itemdb /= #temp itemdb
execute if score #ca itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #cb itemdb
scoreboard players operation #temp9 itemdb /= #temp1 itemdb
execute if score #cb itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #cc itemdb
scoreboard players operation #temp9 itemdb /= #temp2 itemdb
execute if score #cc itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #cd itemdb
scoreboard players operation #temp9 itemdb /= #temp3 itemdb
execute if score #cd itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #ce itemdb
scoreboard players operation #temp9 itemdb /= #temp4 itemdb
execute if score #ce itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #cf itemdb
scoreboard players operation #temp9 itemdb /= #temp5 itemdb
execute if score #cf itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #cg itemdb
scoreboard players operation #temp9 itemdb /= #temp6 itemdb
execute if score #cg itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #ch itmdb
scoreboard players operation #temp9 itemdb /= #temp7 itemdb
execute if score #ch itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb
scoreboard players operation #temp9 itemdb = #ci itmdb
scoreboard players operation #temp9 itemdb /= #temp8 itemdb
execute if score #ci itemdb matches 1.. run scoreboard players operation #min itemdb < #temp9 itemdb

#tellraw @a {"score":{"objective":"itemdb","name":"#min"}}

scoreboard players operation #temp itemdb *= #min itemdb
scoreboard players operation #temp1 itemdb *= #min itemdb
scoreboard players operation #temp2 itemdb *= #min itemdb
scoreboard players operation #temp3 itemdb *= #min itemdb
scoreboard players operation #temp4 itemdb *= #min itemdb
scoreboard players operation #temp5 itemdb *= #min itemdb
scoreboard players operation #temp6 itemdb *= #min itemdb
scoreboard players operation #temp7 itemdb *= #min itemdb
scoreboard players operation #temp8 itemdb *= #min itemdb

execute store result storage itemdb in[1][0] int 1 run scoreboard players operation #ca itemdb -= #temp itemdb
execute store result storage itemdb in[1][1] int 1 run scoreboard players operation #cb itemdb -= #temp1 itemdb
execute store result storage itemdb in[1][2] int 1 run scoreboard players operation #cc itemdb -= #temp2 itemdb
execute store result storage itemdb in[1][3] int 1 run scoreboard players operation #cd itemdb -= #temp3 itemdb
execute store result storage itemdb in[1][4] int 1 run scoreboard players operation #ce itemdb -= #temp4 itemdb
execute store result storage itemdb in[1][5] int 1 run scoreboard players operation #cf itemdb -= #temp5 itemdb
execute store result storage itemdb in[1][6] int 1 run scoreboard players operation #cg itemdb -= #temp6 itemdb
execute store result storage itemdb in[1][7] int 1 run scoreboard players operation #ch itemdb -= #temp7 itemdb
execute store result storage itemdb in[1][8] int 1 run scoreboard players operation #ci itemdb -= #temp8 itemdb

scoreboard players operation out itemdb = #count itemdb
scoreboard players operation out itemdb *= #min itemdb
scoreboard players set out1 itemdb 0