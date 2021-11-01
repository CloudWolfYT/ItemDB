function itemdb:items/db/get

execute store result score #temp itemdb run data get storage itemdb out.tag.version
execute store result score in itemdb run data get storage itemdb temp.tag.version
execute unless score in itemdb = #temp itemdb run data modify storage itemdb out.Count set from storage itemdb in.Count
execute unless score in itemdb = #temp itemdb run data modify storage itemdb out.Count set from storage itemdb in.Count
data remove storage itemdb out.Slot

#tellraw @a {"nbt":"in","storage":"itemdb"}
#tellraw @a {"nbt":"out","storage":"itemdb"}