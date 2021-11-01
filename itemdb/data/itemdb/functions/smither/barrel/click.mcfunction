item modify block ~ ~ ~ container.19 itemdb:remove_one
item modify block ~ ~ ~ container.22 itemdb:remove_one

scoreboard players operation in itemdb = out itemdb
function itemdb:smither/db/get

execute store result score in itemdb run data get storage itemdb out[2]
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
data modify storage itemdb out.Slot set value 0b

data remove block 69 1 69 Items
data modify block 69 1 69 Items[] set from storage itemdb out
loot give @p[tag=this] mine 69 1 69 air{drop_contents:true}

scoreboard players set #player_io itemdb 0
data modify storage itemdb container set from block ~ ~ ~ Items
function itemdb:smither/barrel/refresh