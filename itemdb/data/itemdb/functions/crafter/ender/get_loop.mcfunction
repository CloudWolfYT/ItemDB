scoreboard players operation #temp itemdb = #count itemdb
scoreboard players operation #temp itemdb %= #64 itemdb
execute if score #temp itemdb matches 0 run scoreboard players set #temp itemdb 64
execute store result storage itemdb out.Slot byte 1 run scoreboard players get #slot itemdb
execute store result storage itemdb out.Count byte 1 run scoreboard players get #temp itemdb
data modify block 69 1 69 Items insert -1 from storage itemdb out
#tellraw @a {"nbt":"out","storage":"itemdb"}
scoreboard players operation #count itemdb -= #temp itemdb
scoreboard players add #slot itemdb 1
execute if score #count itemdb matches 1.. run function itemdb:crafter/ender/get_loop