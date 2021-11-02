execute if score .vanilla_scan itemdb matches 1 unless data storage itemdb temp[-1].tag.has_id run function itemdb:versioner/get_vanilla
execute if data storage itemdb temp[-1].tag.version run function itemdb:versioner/get_ver
data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:versioner/loop
