#tellraw @a {"nbt":"temp[-1]","storage":"itemdb"}
data modify storage itemdb temp[-1].Slot set value 0b
data remove block 69 1 69 Items
data modify block 69 1 69 Items[] set from storage itemdb temp[-1]
loot give @p[tag=this] mine 69 1 69 air{drop_contents:true}