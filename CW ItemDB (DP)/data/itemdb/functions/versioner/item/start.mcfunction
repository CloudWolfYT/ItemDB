scoreboard players reset @s itemdb_v_relog
data remove storage itemdb in
data remove storage itemdb temp
data modify storage itemdb in set from entity @s Item
data modify storage itemdb temp set from storage itemdb in
execute store result score in itemdb run data get storage itemdb temp.tag.itemdb.id
execute if score in itemdb matches 1.. run function itemdb:versioner/item/update
execute unless score in itemdb matches 0 unless data storage itemdb temp.tag.itemdb.has_id as @e[type=armor_stand,tag=itemdb] run function itemdb:versioner/item/vanilla
data modify entity @s Item set from storage itemdb in