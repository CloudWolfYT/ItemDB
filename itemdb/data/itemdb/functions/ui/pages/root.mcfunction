clear @p[tag=this] #itemdb:all_items{has_id:1b,id:0}
scoreboard players set #bool itemdb 0
scoreboard players add @s itemdb_page 0
execute unless data storage itemdb temp[{Slot:17b}] run function itemdb:ui/pages/search
execute if score #bool itemdb matches 0 if score @s itemdb_page matches 0 run function itemdb:ui/pages/vanilla/root
execute if score #bool itemdb matches 0 if score @s itemdb_page matches 1 if score #playerio itemdb matches 2 run function itemdb:ui/pages/items/to_recipe/start
execute if score #bool itemdb matches 0 if score @s itemdb_page matches 1 run function itemdb:ui/pages/items/root
execute if score #bool itemdb matches 0 if score @s itemdb_page matches 2 run function itemdb:ui/pages/recipes/root
execute if score #bool itemdb matches 0 if score @s itemdb_page matches 3 run function itemdb:ui/pages/brews/root
execute if score #bool itemdb matches 0 if score @s itemdb_page matches 4 run function itemdb:ui/pages/smiths/root