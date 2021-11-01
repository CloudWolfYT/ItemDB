data modify storage itemdb in set value [[[0,0,0],[0,0,0],[0,0,0]],[[0,0,0],[0,0,0],[0,0,0]],[0,1],[0]]
scoreboard players operation in itemdb = @s itemdb_id
function itemdb:crafter/db/get
data modify storage itemdb in[3][0] set from storage itemdb out[3][0]
execute unless data storage itemdb temp[{Slot:25b}] run function itemdb:ui/pages/recipes/types
execute store result score #shaped itemdb run data get storage itemdb in[3][0]

data modify storage itemdb in[0][0][0] set from storage itemdb temp[{Slot:2b}].tag.id
data modify storage itemdb in[0][0][1] set from storage itemdb temp[{Slot:3b}].tag.id
data modify storage itemdb in[0][0][2] set from storage itemdb temp[{Slot:4b}].tag.id
data modify storage itemdb in[0][1][0] set from storage itemdb temp[{Slot:11b}].tag.id
data modify storage itemdb in[0][1][1] set from storage itemdb temp[{Slot:12b}].tag.id
data modify storage itemdb in[0][1][2] set from storage itemdb temp[{Slot:13b}].tag.id
data modify storage itemdb in[0][2][0] set from storage itemdb temp[{Slot:20b}].tag.id
data modify storage itemdb in[0][2][1] set from storage itemdb temp[{Slot:21b}].tag.id
data modify storage itemdb in[0][2][2] set from storage itemdb temp[{Slot:22b}].tag.id

execute store result storage itemdb in[1][0][0] int 1 run data get storage itemdb temp[{Slot:2b}].Count
execute store result storage itemdb in[1][0][1] int 1 run data get storage itemdb temp[{Slot:3b}].Count
execute store result storage itemdb in[1][0][2] int 1 run data get storage itemdb temp[{Slot:4b}].Count
execute store result storage itemdb in[1][1][0] int 1 run data get storage itemdb temp[{Slot:11b}].Count
execute store result storage itemdb in[1][1][1] int 1 run data get storage itemdb temp[{Slot:12b}].Count
execute store result storage itemdb in[1][1][2] int 1 run data get storage itemdb temp[{Slot:13b}].Count
execute store result storage itemdb in[1][2][0] int 1 run data get storage itemdb temp[{Slot:20b}].Count
execute store result storage itemdb in[1][2][1] int 1 run data get storage itemdb temp[{Slot:21b}].Count
execute store result storage itemdb in[1][2][2] int 1 run data get storage itemdb temp[{Slot:22b}].Count

data modify storage itemdb in[2][0] set from storage itemdb temp[{Slot:15b}].tag.id
execute store result storage itemdb in[2][1] int 1 run data get storage itemdb temp[{Slot:15b}].Count

scoreboard players operation in itemdb = @s itemdb_id
execute if score in itemdb = .recipes itemdb run function itemdb:crafter/db/append
#tellraw @a {"nbt":"in","storage":"itemdb"}
function itemdb:crafter/db/set
execute if score #shaped itemdb matches 0 run function itemdb:crafter/db/compress/shaped
execute if score #shaped itemdb matches 1 run function itemdb:crafter/db/compress/shapeless/start
data modify storage itemdb in append value [0]
execute store result storage itemdb in[3][0] int 1 run scoreboard players get #shaped itemdb
#tellraw @a {"nbt":"in","storage":"itemdb"}

#tellraw @a {"nbt":"in","storage":"itemdb"}
#execute store result score #temp itemdb run data get storage itemdb in[0][0][-1]
#execute store result score #temp1 itemdb run data get storage itemdb in[0][1][-1]
#execute store result score #temp2 itemdb run data get storage itemdb in[0][2][-1]
#execute if score #temp itemdb matches 0 if score #temp1 itemdb matches 0 if score #temp2 itemdb matches 0 run function itemdb:crafter/db/delete_trailing_zeros
#tellraw @a {"nbt":"in","storage":"itemdb"}

function itemdb:crafter/db/set_min
