scoreboard players reset @s itemdb_v_relog
data modify storage itemdb temp set from entity @s Inventory
data remove storage itemdb in
execute store result score #loop itemdb run data get storage itemdb temp
execute if score #loop itemdb matches 1.. run function itemdb:versioner/loop

execute store result score #loop itemdb run data get storage itemdb in
data remove block 69 1 69 Items
data modify block 69 1 69 Items set from storage itemdb in
execute if score #loop itemdb matches 1.. run function itemdb:versioner/player/get