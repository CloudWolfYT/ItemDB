data modify storage itemdb temp[-1].tag.drop_contents set value true
data modify entity @s HandItems[0] set from storage itemdb temp[-1]
data modify storage itemdb temp1 set from storage itemdb temp[-1]
data modify storage itemdb temp1.Slot set value 0b
data modify block 69 0 69 Items insert -1 from storage itemdb temp1
loot replace block 69 0 69 container.0 mine 69 0 69 mainhand
data modify storage itemdb in append from block 69 0 69 Items[0]
data remove storage itemdb in[-1].tag.drop_contents
data modify storage itemdb in[-1].Slot set from storage itemdb temp[-1].Slot
data modify storage itemdb in[-1].Count set from storage itemdb temp[-1].Count