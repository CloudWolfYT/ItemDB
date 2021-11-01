clear @p[tag=this] #itemdb:all_items{has_id:1b,id:0}
execute store result score #temp itemdb run data get entity @p[tag=this] Inventory[{tag:{crafted_item:1b}}]
execute store result score #temp1 itemdb run clear @p[tag=this] #itemdb:all_items{crafted_item:1b}
scoreboard players operation #temp itemdb < #1 itemdb
scoreboard players operation #temp1 itemdb < #1 itemdb
scoreboard players operation #player_io itemdb = #temp itemdb
scoreboard players operation #player_io itemdb += #temp1 itemdb