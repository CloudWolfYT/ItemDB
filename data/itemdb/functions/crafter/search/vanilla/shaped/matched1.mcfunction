
scoreboard players set #btag1 itemdb 0
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][0][2]
data modify storage itemdb tags set from storage itemdb temp[-1][0][0][2]
scoreboard players operation in itemdb = #c itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #c itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][1][2]
data modify storage itemdb tags set from storage itemdb temp[-1][0][1][2]
scoreboard players operation in itemdb = #f itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #f itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][2][0]
data modify storage itemdb tags set from storage itemdb temp[-1][0][2][0]
scoreboard players operation in itemdb = #g itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #g itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][2][1]
data modify storage itemdb tags set from storage itemdb temp[-1][0][2][1]
scoreboard players operation in itemdb = #h itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #h itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][2][2]
data modify storage itemdb tags set from storage itemdb temp[-1][0][2][2]
scoreboard players operation in itemdb = #i itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #i itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1

execute if score #btag1 itemdb matches 5 run function itemdb:crafter/search/vanilla/shaped/found