#tellraw @a {"nbt":"out","storage":"itemdb"}
data modify storage itemdb out.Slot set value 15b
data modify storage itemdb out.tag.crafted_item set value 1b
data modify storage itemdb out.tag.id_null set value 1b
data modify block ~ ~ ~ Items insert -1 from storage itemdb out