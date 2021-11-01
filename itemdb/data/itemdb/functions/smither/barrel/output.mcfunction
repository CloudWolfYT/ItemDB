scoreboard players operation in itemdb = out itemdb
function itemdb:smither/db/get
tellraw @a {"score":{"objective":"itemdb","name":"out"}}
execute store result score in itemdb run data get storage itemdb out[2]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg

data modify storage itemdb out.Slot set value 25b
data modify storage itemdb out.tag.crafted_item set value 1b
data modify storage itemdb out.tag.id_null set value 1b
data modify block ~ ~ ~ Items insert -1 from storage itemdb out
#tellraw @a {"nbt":"out","storage":"itemdb"}