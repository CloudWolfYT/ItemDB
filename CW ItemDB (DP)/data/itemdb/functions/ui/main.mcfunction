tag @p[tag=this] add itemdb_ui

## detect shift clicking
data modify storage itemdb temp set from entity @p[tag=this] Inventory
scoreboard players set #temp itemdb 0
execute store result score #loop itemdb run data get storage itemdb temp
execute if score #loop itemdb matches 1.. run function itemdb:ui/get_inv_loop
execute store result score #temp1 itemdb run clear @p[tag=this] #itemdb:all_items 0
scoreboard players set #playerio itemdb 2
execute if score #temp1 itemdb > #temp itemdb run scoreboard players set #playerio itemdb 1

data remove storage itemdb temp
data modify storage itemdb temp set from block ~ ~ ~ Items
execute store result score #temp itemdb run data modify entity @s data.prev set from storage itemdb temp
execute if score #temp itemdb matches 1 run function itemdb:ui/pages/root
data modify entity @s data.prev set from block ~ ~ ~ Items