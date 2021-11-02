scoreboard players set @s itemdb_v_vanilla 0
data modify storage itemdb temp set from entity @s Inventory
data remove storage itemdb temp[{tag:{itemdb:{has_id:1b}}}]

data remove storage itemdb in
execute store result score #loop itemdb run data get storage itemdb temp
execute if score #loop itemdb matches 1.. as @e[type=armor_stand,tag=itemdb,limit=1] run function itemdb:items/vanilla/player/loop
#tellraw @a {"nbt":"in","storage":"itemdb"}

execute store result score #loop itemdb run data get storage itemdb in
data remove block 69 1 69 Items
data modify block 69 1 69 Items set from storage itemdb in
execute if score #loop itemdb matches 1.. run function itemdb:versioner/player/get