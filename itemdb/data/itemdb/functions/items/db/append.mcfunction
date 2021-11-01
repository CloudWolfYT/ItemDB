data modify storage itemdb:items nbt append value {id:"minecraft:structure_void",Count:1b,tag:{has_id:1b,id:0,version:0}}
execute store result storage itemdb:items nbt[-1].tag.id int 1 run scoreboard players get .items itemdb

scoreboard players add .items itemdb 1