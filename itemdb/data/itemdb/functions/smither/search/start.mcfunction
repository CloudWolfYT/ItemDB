execute store result score #a itemdb run data get storage itemdb in[0]
execute store result score #b itemdb run data get storage itemdb in[1]
scoreboard players set #bool itemdb 0
execute if score #a itemdb matches 0 if score #b itemdb matches 0 run scoreboard players set #bool itemdb 1

scoreboard players set out itemdb -1
scoreboard players operation #loop itemdb = .smiths itemdb
data modify storage itemdb temp set from storage itemdb:smither list
execute if score #bool itemdb matches 0 run function itemdb:smither/search/loop

#tellraw @a {"nbt":"in","storage":"itemdb"}
#tellraw @a {"score":{"objective":"itemdb","name":"out"}}