say result
data modify storage itemdb out.Slot set value 0b
data modify storage itemdb out.tag.crafted_item set value 1b
data modify storage itemdb out.tag.id_null set value 1b
scoreboard players set in itemdb 15
function itemdb:crafter/ender/insert