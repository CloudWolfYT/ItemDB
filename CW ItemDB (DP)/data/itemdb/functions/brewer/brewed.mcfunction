data modify storage itemdb container set from block ~ ~ ~ Items

scoreboard players set #bool itemdb 0

data modify storage itemdb in set value [0,0]
data modify storage itemdb in[0] set from storage itemdb container[{Slot:0b}].tag.itemdb.id
data modify storage itemdb in[1] set from storage itemdb container[{Slot:3b}].tag.itemdb.id
function itemdb:brewer/search/start
execute unless score out itemdb matches 0 run function itemdb:brewer/load0

data modify storage itemdb in set value [0,0]
data modify storage itemdb in[0] set from storage itemdb container[{Slot:1b}].tag.itemdb.id
data modify storage itemdb in[1] set from storage itemdb container[{Slot:3b}].tag.itemdb.id
function itemdb:brewer/search/start
execute unless score out itemdb matches 0 run function itemdb:brewer/load1

data modify storage itemdb in set value [0,0]
data modify storage itemdb in[0] set from storage itemdb container[{Slot:2b}].tag.itemdb.id
data modify storage itemdb in[1] set from storage itemdb container[{Slot:3b}].tag.itemdb.id
function itemdb:brewer/search/start
execute unless score out itemdb matches 0 run function itemdb:brewer/load2

execute if score #bool itemdb matches 1 run function itemdb:brewer/success