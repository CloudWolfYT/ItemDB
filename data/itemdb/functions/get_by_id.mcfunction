scoreboard players operation in itemdb = @s itemdb_get
execute if score @s itemdb_get matches 1.. run function itemdb:items/db/get
execute if score @s itemdb_get matches ..-1 run function itemdb:items/vanilla/get_neg

data remove block 69 1 69 Items
data modify storage itemdb out.Slot set value 0b
data modify block 69 1 69 Items insert -1 from storage itemdb out
loot give @s mine 69 1 69 air{drop_contents:true}

scoreboard players set @s itemdb_get 0