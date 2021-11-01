# a b c
# d e f
# g h i
scoreboard players set #bool itemdb 0
execute if score #a itemdb matches 0 if score #b itemdb matches 0 if score #c itemdb matches 0 if score #d itemdb matches 0 if score #e itemdb matches 0 if score #f itemdb matches 0 if score #g itemdb matches 0 if score #h itemdb matches 0 if score #i itemdb matches 0 run scoreboard players set #bool itemdb 1

#say try
execute store result score #loop itemdb run data get storage itemdb vanilla_recipes
#tellraw @a {"score":{"objective":"itemdb","name":"#loop"}}
data modify storage itemdb temp set from storage itemdb vanilla_recipes
execute if score #bool itemdb matches 0 run function itemdb:crafter/search/vanilla/loop
#tellraw @a {"nbt":"out","storage":"itemdb"}