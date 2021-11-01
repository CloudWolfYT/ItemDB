scoreboard players operation in itemdb = out itemdb
function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
data modify storage itemdb out.Slot set value 2b
data modify block ~ ~ ~ Items insert -1 from storage itemdb out
scoreboard players set #bool itemdb 1