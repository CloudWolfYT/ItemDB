tag @p[tag=this] add barrel_craft
data modify storage itemdb container set from block ~ ~ ~ Items
execute store result score #temp itemdb run data modify entity @s data.prev set from storage itemdb container
execute if score #temp itemdb matches 1 run function itemdb:crafter/barrel/refresh
data modify entity @s data.prev set from block ~ ~ ~ Items