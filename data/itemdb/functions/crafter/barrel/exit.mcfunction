execute at @s at @e[type=marker,tag=itemdb,tag=crafter,sort=nearest,limit=1] run function itemdb:crafter/barrel/exit1
data remove block 69 1 69 Items
data modify block 69 1 69 Items set from storage itemdb temp
loot give @s mine 69 1 69 air{drop_contents:true}