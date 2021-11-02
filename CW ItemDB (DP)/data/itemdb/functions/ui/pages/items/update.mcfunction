data modify storage itemdb in set from storage itemdb temp[-1]
execute store result storage itemdb in.tag.itemdb.id int 1 run scoreboard players get in itemdb
data modify storage itemdb in.tag.itemdb.has_id set value 1b
execute store result score #temp itemdb run data get storage itemdb out.tag.itemdb.version
data modify storage itemdb in.tag.itemdb.version set value 0
execute store result storage itemdb in.tag.itemdb.version int 1 run scoreboard players add #temp itemdb 1
#tellraw @a {"score":{"objective":"itemdb","name":"#temp"}}
#tellraw @a {"nbt":"in","storage":"itemdb"}
data remove storage itemdb in.Slot
function itemdb:items/db/set

#say update
scoreboard players set @a itemdb_v_relog 1