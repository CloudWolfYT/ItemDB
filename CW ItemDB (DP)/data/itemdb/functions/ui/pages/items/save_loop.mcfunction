execute store result score in itemdb run data get storage itemdb temp[-1].Slot
execute if score in itemdb matches 17.. run scoreboard players remove in itemdb 2
execute if score in itemdb matches 8.. run scoreboard players remove in itemdb 2
scoreboard players remove in itemdb 1
scoreboard players operation in itemdb += @s itemdb_id
function itemdb:items/db/get

execute if score in itemdb matches 1.. if data storage itemdb out run function itemdb:ui/pages/items/compare
execute if score in itemdb = .items itemdb run function itemdb:ui/pages/items/append

#execute if score #temp itemdb matches 0 run tellraw @a {"nbt":"in","storage":"itemdb"}
#tellraw @a {"score":{"objective":"itemdb","name":"#loop"}}
data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:ui/pages/items/save_loop