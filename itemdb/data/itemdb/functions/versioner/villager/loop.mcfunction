data modify storage itemdb container append value {}

data remove storage itemdb out
data modify storage itemdb in set from storage itemdb temp[-1].buy
execute store result score in itemdb run data get storage itemdb in.tag.id
execute if score in itemdb matches 1.. run function itemdb:versioner/villager/update
execute if score .vanilla_scan itemdb matches 1 unless data storage itemdb in.tag.has_id run function itemdb:versioner/villager/vanilla
data modify storage itemdb container[-1].buy set from storage itemdb out
data remove storage itemdb out
data modify storage itemdb in set from storage itemdb temp[-1].buyB
execute store result score in itemdb run data get storage itemdb in.tag.id
execute if score in itemdb matches 1.. run function itemdb:versioner/villager/update
execute if score .vanilla_scan itemdb matches 1 unless data storage itemdb in.tag.has_id run function itemdb:versioner/villager/vanilla
data modify storage itemdb container[-1].buyB set from storage itemdb out
data remove storage itemdb out
data modify storage itemdb in set from storage itemdb temp[-1].sell
execute store result score in itemdb run data get storage itemdb in.tag.id
execute if score in itemdb matches 1.. run function itemdb:versioner/villager/update
execute if score .vanilla_scan itemdb matches 1 unless data storage itemdb in.tag.has_id run function itemdb:versioner/villager/vanilla
data modify storage itemdb container[-1].sell set from storage itemdb out

data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:versioner/villager/loop