function itemdb:items/db/get

execute store result score #temp itemdb run data get storage itemdb out.tag.itemdb.version
execute store result score in itemdb run data get storage itemdb temp.tag.itemdb.version
execute unless score in itemdb = #temp itemdb run data modify storage itemdb in set from storage itemdb out
execute unless score in itemdb = #temp itemdb run data modify storage itemdb in.Count set from storage itemdb temp.Count

data modify entity @s Item set from storage itemdb in
#say update