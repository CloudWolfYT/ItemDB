
scoreboard players set #btag1 itemdb 0
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][1]
data modify storage itemdb tags set from storage itemdb temp[-1][0][1]
scoreboard players operation in itemdb = #ib itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #ib itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][2]
data modify storage itemdb tags set from storage itemdb temp[-1][0][2]
scoreboard players operation in itemdb = #ic itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #ic itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][3]
data modify storage itemdb tags set from storage itemdb temp[-1][0][3]
scoreboard players operation in itemdb = #id itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #id itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1

execute if score #btag1 itemdb matches 3 run function itemdb:crafter/search/vanilla/shapeless/matched1