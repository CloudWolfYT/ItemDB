data modify storage itemdb in.tag.drop_contents set value true
data modify entity @s HandItems[0] set from storage itemdb in
data modify storage itemdb in.Slot set value 0b
#tellraw @a {"nbt":"in","storage":"itemdb"}
data remove block 69 0 69 Items
data modify block 69 0 69 Items insert -1 from storage itemdb in
loot replace block 69 0 69 container.0 mine 69 0 69 mainhand
data modify storage itemdb out set from block 69 0 69 Items[0]
data remove storage itemdb out.tag.drop_contents
data modify storage itemdb out.Count set from storage itemdb in.Count