data modify storage itemdb temp set from storage itemdb container
data remove storage itemdb temp[{tag:{itemdb:{has_id:1b,id:0}}}]
data remove storage itemdb temp[{tag:{crafted_item:1b}}]
scoreboard players set #bool1 itemdb 0
execute store result score #items itemdb run data get storage itemdb temp
data modify storage itemdb in set value [[[0,0,0],[0,0,0],[0,0,0]],[[0,0,0],[0,0,0],[0,0,0]]]
execute if score #items itemdb matches 1.. run function itemdb:crafter/prune/filter