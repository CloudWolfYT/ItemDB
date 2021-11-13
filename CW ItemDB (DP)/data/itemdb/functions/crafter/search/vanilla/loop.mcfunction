
execute store result score #shapeless itemdb run data get storage itemdb temp[-1][3][0] 
execute store result score #tags_old itemdb run data get storage itemdb temp[-1][0][0][0]
scoreboard players operation #tags itemdb = #tags_old itemdb
data modify storage itemdb tags set from storage itemdb temp[-1][0][0][0]
scoreboard players operation in itemdb = #a itemdb
scoreboard players set #btag itemdb 0
execute if score #shapeless itemdb matches 0 run function itemdb:crafter/search/vanilla/is_tag
execute if score #btag itemdb matches 1 if score #shapeless itemdb matches 0 run function itemdb:crafter/search/vanilla/shaped/matched0

data modify storage itemdb tags set from storage itemdb temp[-1][0][0][0]
scoreboard players operation #tags itemdb = #tags_old itemdb
scoreboard players operation in itemdb = #ma itemdb
scoreboard players set #btag itemdb 0
execute if score #shapeless itemdb matches 0 run function itemdb:crafter/search/vanilla/is_tag
execute if score out itemdb matches -1 if score #btag itemdb matches 1 if score #shapeless itemdb matches 0 run function itemdb:crafter/search/vanilla/mirrored/matched0

data modify storage itemdb tags set from storage itemdb temp[-1][0][0]
execute store result score #tags itemdb run data get storage itemdb tags
scoreboard players operation in itemdb = #ia itemdb
scoreboard players set #btag itemdb 0
execute if score #shapeless itemdb matches 1 run function itemdb:crafter/search/vanilla/is_tag
execute if score out itemdb matches -1 if score #btag itemdb matches 1 if score #shapeless itemdb matches 1 run function itemdb:crafter/search/vanilla/shapeless/matched0

data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:crafter/search/vanilla/loop