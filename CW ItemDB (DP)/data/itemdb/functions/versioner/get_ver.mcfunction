execute store result score in itemdb run data get storage itemdb temp[-1].tag.itemdb.id
execute if score in itemdb matches 1.. run function itemdb:items/db/get
#execute if score in itemdb matches ..-1 run scoreboard players add in itemdb 1
execute if score in itemdb matches ..-1 run function itemdb:items/vanilla/get_neg
#tellraw @a {"nbt":"out","storage":"itemdb"}
#tellraw @a {"score":{"objective":"itemdb","name":"in"}}
execute store result score #temp itemdb run data get storage itemdb out.tag.itemdb.version
execute store result score in itemdb run data get storage itemdb temp[-1].tag.itemdb.version
execute unless score in itemdb = #temp itemdb run function itemdb:versioner/update