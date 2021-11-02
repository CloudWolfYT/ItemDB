data remove storage itemdb temp[{tag:{itemdb:{id:0}}}]

execute store result score #a itemdb run data get storage itemdb temp[{Slot:2b}].tag.itemdb.id
execute store result score #b itemdb run data get storage itemdb temp[{Slot:11b}].tag.itemdb.id
execute store result score #c itemdb run data get storage itemdb temp[{Slot:20b}].tag.itemdb.id
execute store result score #d itemdb run data get storage itemdb temp[{Slot:4b}].tag.itemdb.id
execute store result score #e itemdb run data get storage itemdb temp[{Slot:13b}].tag.itemdb.id
execute store result score #f itemdb run data get storage itemdb temp[{Slot:22b}].tag.itemdb.id
execute store result score #g itemdb run data get storage itemdb temp[{Slot:6b}].tag.itemdb.id
execute store result score #h itemdb run data get storage itemdb temp[{Slot:15b}].tag.itemdb.id
execute store result score #i itemdb run data get storage itemdb temp[{Slot:24b}].tag.itemdb.id

data modify storage itemdb in set value [0,0,0]
execute store result storage itemdb in[0] int 1 run scoreboard players get #a itemdb
execute store result storage itemdb in[1] int 1 run scoreboard players get #b itemdb
execute store result storage itemdb in[2] int 1 run scoreboard players get #c itemdb
scoreboard players operation in itemdb = @s itemdb_id
scoreboard players set #temp itemdb 0
execute unless score #a itemdb matches 0 run scoreboard players add #temp itemdb 1
execute unless score #b itemdb matches 0 run scoreboard players add #temp itemdb 1
execute unless score #c itemdb matches 0 run scoreboard players add #temp itemdb 1
execute if score in itemdb >= .smiths itemdb if score #temp itemdb matches 1.. run function itemdb:smither/db/append
function itemdb:smither/db/set

data modify storage itemdb in set value [0,0,0]
execute store result storage itemdb in[0] int 1 run scoreboard players get #d itemdb
execute store result storage itemdb in[1] int 1 run scoreboard players get #e itemdb
execute store result storage itemdb in[2] int 1 run scoreboard players get #f itemdb
scoreboard players operation in itemdb = @s itemdb_id
scoreboard players add in itemdb 1
scoreboard players set #temp itemdb 0
execute unless score #d itemdb matches 0 run scoreboard players add #temp itemdb 1
execute unless score #e itemdb matches 0 run scoreboard players add #temp itemdb 1
execute unless score #f itemdb matches 0 run scoreboard players add #temp itemdb 1
execute if score in itemdb >= .smiths itemdb if score #temp itemdb matches 1.. run function itemdb:smither/db/append
function itemdb:smither/db/set

data modify storage itemdb in set value [0,0,0]
execute store result storage itemdb in[0] int 1 run scoreboard players get #g itemdb
execute store result storage itemdb in[1] int 1 run scoreboard players get #h itemdb
execute store result storage itemdb in[2] int 1 run scoreboard players get #i itemdb
scoreboard players operation in itemdb = @s itemdb_id
scoreboard players add in itemdb 2
scoreboard players set #temp itemdb 0
execute unless score #g itemdb matches 0 run scoreboard players add #temp itemdb 1
execute unless score #h itemdb matches 0 run scoreboard players add #temp itemdb 1
execute unless score #i itemdb matches 0 run scoreboard players add #temp itemdb 1
execute if score in itemdb >= .smiths itemdb if score #temp itemdb matches 1.. run function itemdb:smither/db/append
function itemdb:smither/db/set