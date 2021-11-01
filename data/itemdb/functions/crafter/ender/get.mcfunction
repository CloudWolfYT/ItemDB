execute if score out1 itemdb matches 0 run item replace entity @s enderchest.15 with air

data remove storage itemdb out.tag.id_null
data remove storage itemdb out.tag.crafted_item
scoreboard players operation #count itemdb = out itemdb
data remove block 69 1 69 Items
scoreboard players set #slot itemdb 0
function itemdb:crafter/ender/get_loop
loot give @p[tag=this] mine 69 1 69 air{drop_contents:true}

execute store result score in itemdb run data get storage itemdb in[1][0]
execute store result score in1 itemdb run data get storage itemdb in[2][0]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][1]
execute store result score in1 itemdb run data get storage itemdb in[2][1]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][2]
execute store result score in1 itemdb run data get storage itemdb in[2][2]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][3]
execute store result score in1 itemdb run data get storage itemdb in[2][3]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][4]
execute store result score in1 itemdb run data get storage itemdb in[2][4]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][5]
execute store result score in1 itemdb run data get storage itemdb in[2][5]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][6]
execute store result score in1 itemdb run data get storage itemdb in[2][6]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][7]
execute store result score in1 itemdb run data get storage itemdb in[2][7]
function itemdb:crafter/ender/set_slot_count
execute store result score in itemdb run data get storage itemdb in[1][8]
execute store result score in1 itemdb run data get storage itemdb in[2][8]
function itemdb:crafter/ender/set_slot_count