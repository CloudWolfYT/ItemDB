
scoreboard players set #btag1 itemdb 0
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][0][1]
data modify storage itemdb tags set from storage itemdb temp[-1][0][0][1]
scoreboard players operation in itemdb = #mb itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #mb itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][1][0]
data modify storage itemdb tags set from storage itemdb temp[-1][0][1][0]
scoreboard players operation in itemdb = #md itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #md itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1
execute store result score #tags itemdb run data get storage itemdb temp[-1][0][1][1]
data modify storage itemdb tags set from storage itemdb temp[-1][0][1][1]
scoreboard players operation in itemdb = #me itemdb
scoreboard players set #btag itemdb 0
execute if score #tags itemdb matches 0 if score #me itemdb matches 0 run scoreboard players set #btag itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 run scoreboard players add #btag1 itemdb 1

execute if score #btag1 itemdb matches 3 run function itemdb:crafter/search/vanilla/mirrored/matched1