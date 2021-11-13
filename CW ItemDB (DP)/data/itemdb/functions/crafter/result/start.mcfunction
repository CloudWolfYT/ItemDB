data modify storage itemdb in set value [[],[],[]]
data modify storage itemdb in1 set value [[],[],[]]
scoreboard players set #temp itemdb 0
execute if score #c itemdb matches 0 if score #f itemdb matches 0 if score #i itemdb matches 0 run scoreboard players set #temp itemdb 1
execute if score #temp itemdb matches 1 if score #b itemdb matches 0 if score #e itemdb matches 0 if score #h itemdb matches 0 run scoreboard players set #temp itemdb 2
execute if score out1 itemdb matches 0 run function itemdb:crafter/result/load_shaped
execute if score out1 itemdb matches 1 run function itemdb:crafter/result/load_shaped
execute if score out1 itemdb matches 2 run function itemdb:crafter/result/load_shapeless
execute if score out1 itemdb matches 3 run function itemdb:crafter/result/load_shaped
execute if score out1 itemdb matches 4 run function itemdb:crafter/result/load_shaped
execute if score out1 itemdb matches 5 run function itemdb:crafter/result/load_shapeless
#tellraw @a {"nbt":"out","storage":"itemdb"}
#tellraw @a {"nbt":"in1","storage":"itemdb"}
#tellraw @a {"text":""}
#tellraw @a {"nbt":"hold","storage":"itemdb"}
#tellraw @a {"nbt":"in","storage":"itemdb"}
# get results #
#tellraw @a {"score":{"objective":"itemdb","name":"out1"}}
#scoreboard players operation in itemdb = out itemdb
#execute if score out2 itemdb matches 0 run function itemdb:crafter/db/get
#execute if score out2 itemdb matches 1 run function itemdb:crafter/db/vanilla/get
#tellraw @a {"nbt":"out","storage":"itemdb"}

execute store result score in itemdb run data get storage itemdb out[2][0]
execute store result score #count itemdb run data get storage itemdb out[2][1]
function itemdb:items/db/get
#tellraw @a {"score":{"objective":"itemdb","name":"in"}}
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
execute store result storage itemdb out.Count byte 1 run scoreboard players get #count itemdb
#tellraw @a {"nbt":"out","storage":"itemdb"}
scoreboard players set out1 itemdb 0
execute if score #player_io itemdb matches 1 run function itemdb:crafter/result/calc_click
execute if score #player_io itemdb matches 2 run function itemdb:crafter/result/calc_shift

#tellraw @a {"nbt":"in","storage":"itemdb"}
#tellraw @a {"nbt":"in1","storage":"itemdb"}