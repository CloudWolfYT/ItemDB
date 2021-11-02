scoreboard players remove in itemdb 1
scoreboard players operation in itemdb += @s itemdb_id

##  reroute item to page of crafting recipe
scoreboard players operation out itemdb = .recipes itemdb
data modify storage itemdb temp1 set from storage itemdb:recipes list
execute store result score #count itemdb run data get storage itemdb temp1
execute if score #count itemdb matches 1.. run function itemdb:ui/pages/items/to_recipe/loop_recipes
execute if score #count itemdb matches ..-1 run scoreboard players set @s itemdb_page 2
execute if score #count itemdb matches ..-1 run scoreboard players set #bool itemdb 2
execute if score #count itemdb matches ..-1 run scoreboard players operation @s itemdb_id = out itemdb
execute if score #count itemdb matches ..-1 run function itemdb:ui/pages/recipes/load