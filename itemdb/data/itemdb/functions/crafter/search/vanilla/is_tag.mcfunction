execute store result score #temp itemdb run data get storage itemdb tags[-1]
execute if score #temp itemdb = in itemdb run scoreboard players set #btag itemdb 1
execute if score #temp itemdb = in itemdb run scoreboard players set #tags itemdb 0
data remove storage itemdb tags[-1]
scoreboard players remove #tags itemdb 1
execute if score #tags itemdb matches 1.. run function itemdb:crafter/search/vanilla/is_tag