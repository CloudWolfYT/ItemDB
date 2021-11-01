### villager inventory ###
scoreboard players reset @s itemdb_v_relog
data modify storage itemdb temp set from entity @s Inventory

data modify storage itemdb temp[0].Slot set value 0b
data modify storage itemdb temp[1].Slot set value 1b
data modify storage itemdb temp[2].Slot set value 2b
data modify storage itemdb temp[3].Slot set value 3b
data modify storage itemdb temp[4].Slot set value 4b
data modify storage itemdb temp[5].Slot set value 5b
data modify storage itemdb temp[6].Slot set value 6b
data modify storage itemdb temp[7].Slot set value 7b

data remove storage itemdb in
execute store result score #loop itemdb run data get storage itemdb temp
execute if score #loop itemdb matches 1.. as @e[type=armor_stand,tag=itemdb] run function itemdb:versioner/loop

execute store result score #loop itemdb run data get storage itemdb in
data remove block 69 1 69 Items
data modify block 69 1 69 Items set from storage itemdb in
execute if score #loop itemdb matches 1.. run function itemdb:versioner/villager/get

### Villager Offers ###
data remove storage itemdb container
data modify storage itemdb temp set from entity @s Offers.Recipes
execute store result score #loop itemdb run data get storage itemdb temp
execute if score #loop itemdb matches 1.. as @e[type=armor_stand,tag=itemdb] run function itemdb:versioner/villager/loop

#tellraw @a {"nbt":"container","storage":"itemdb"}
execute store result score #loop itemdb run data get storage itemdb container
execute if score #loop itemdb matches 1.. run function itemdb:versioner/villager/get_loop