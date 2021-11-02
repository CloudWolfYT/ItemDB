data modify storage itemdb in set from storage itemdb temp[-1]
execute store result storage itemdb in.tag.itemdb.id int 1 run scoreboard players get in itemdb
data modify storage itemdb in.tag.itemdb.has_id set value 1b
data modify storage itemdb in.tag.itemdb.version set value 0
function itemdb:items/db/append
function itemdb:items/db/set
