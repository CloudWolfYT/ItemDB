data modify storage itemdb temp.tag.drop_contents set value true
data modify entity @s HandItems[0] set from storage itemdb temp
data remove block 69 0 69 Items
data modify block 69 0 69 Items insert -1 from storage itemdb temp
loot replace block 69 0 69 container.0 mine 69 0 69 mainhand
data modify storage itemdb in set from block 69 0 69 Items[0]
#tellraw @a {"nbt":"in","storage":"itemdb"}
data remove storage itemdb in.tag.drop_contents
data modify storage itemdb in.Slot set from storage itemdb temp.Slot
data modify storage itemdb in.Count set from storage itemdb temp.Count