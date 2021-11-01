data modify storage itemdb:items nbt set from block ~ ~ ~ Items[0].tag.ItemDB.items
data modify storage itemdb:recipes list set from block ~ ~ ~ Items[0].tag.ItemDB.recipes.list
data modify storage itemdb:recipes min set from block ~ ~ ~ Items[0].tag.ItemDB.recipes.min
data modify storage itemdb:brewer list set from block ~ ~ ~ Items[0].tag.ItemDB.brewer
data modify storage itemdb:smither list set from block ~ ~ ~ Items[0].tag.ItemDB.smither

execute store result score .items itemdb run data get storage itemdb:items nbt
execute store result score .recipes itemdb run data get storage itemdb:recipes min
execute store result score .brews itemdb run data get storage itemdb:brewer list
execute store result score .smiths itemdb run data get storage itemdb:smither list

execute store result score .vanilla_scan itemdb run data get block ~ ~ ~ Items[0].tag.ItemDB.settings.vanilla_linker
execute store result score .vanilla_recipes itemdb run data get block ~ ~ ~ Items[0].tag.ItemDB.settings.vanilla_recipes

execute if score .vanilla_recipes itemdb matches 1 run function itemdb:crafter/db/vanilla/create