scoreboard players set #btag1 itemdb 0
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][4]
data modify storage itemdb tags set from storage itemdb temp[-1][0][4]
scoreboard players operation in itemdb = #ie itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #ie itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][5]
data modify storage itemdb tags set from storage itemdb temp[-1][0][5]
scoreboard players operation in itemdb = #if itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #if itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][6]
data modify storage itemdb tags set from storage itemdb temp[-1][0][6]
scoreboard players operation in itemdb = #ig itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #ig itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][7]
data modify storage itemdb tags set from storage itemdb temp[-1][0][7]
scoreboard players operation in itemdb = #ih itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #ih itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][8]
data modify storage itemdb tags set from storage itemdb temp[-1][0][8]
scoreboard players operation in itemdb = #ii itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #ii itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1

execute if score #btag1 itemdb matches 5 run function itemdb:crafter/search/vanilla/shapeless/found