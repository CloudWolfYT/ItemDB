setblock ~ ~ ~ chest{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b,tag:{ItemDB:{}}}]}

data modify block ~ ~ ~ Items[0].tag.ItemDB.items set from storage itemdb:items nbt
data modify block ~ ~ ~ Items[0].tag.ItemDB.recipes.list set from storage itemdb:recipes list
data modify block ~ ~ ~ Items[0].tag.ItemDB.recipes.min set from storage itemdb:recipes min
data modify block ~ ~ ~ Items[0].tag.ItemDB.brewer set from storage itemdb:brewer list
data modify block ~ ~ ~ Items[0].tag.ItemDB.smither set from storage itemdb:smither list

execute store result block ~ ~ ~ Items[0].tag.ItemDB.settings.vanilla_linker int 1 run scoreboard players get .vanilla_scan itemdb
execute store result block ~ ~ ~ Items[0].tag.ItemDB.settings.vanilla_linker int 1 run scoreboard players get .vanilla_recipes itemdb

function itemdb:menu/start