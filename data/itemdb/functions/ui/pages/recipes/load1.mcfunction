scoreboard players operation in itemdb = @s itemdb_id
function itemdb:crafter/db/get
data modify storage itemdb temp1 set from storage itemdb out
execute unless data storage itemdb out run data modify storage itemdb temp1 set value [[[0,0,0],[0,0,0],[0,0,0]],[[0,0,0],[0,0,0],[0,0,0]],[0,1]]
#tellraw @a {"nbt":"temp1","storage":"itemdb"}
execute store result score in itemdb run data get storage itemdb temp1[2][0]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[2][1]
data modify storage itemdb out.Slot set value 15b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][0][0]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][0][0]
data modify storage itemdb out.Slot set value 2b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][0][1]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][0][1]
data modify storage itemdb out.Slot set value 3b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][0][2]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][0][2]
data modify storage itemdb out.Slot set value 4b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][1][0]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][1][0]
data modify storage itemdb out.Slot set value 11b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][1][1]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][1][1]
data modify storage itemdb out.Slot set value 12b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][1][2]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][1][2]
data modify storage itemdb out.Slot set value 13b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][2][0]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][2][0]
data modify storage itemdb out.Slot set value 20b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][2][1]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][2][1]
data modify storage itemdb out.Slot set value 21b
function itemdb:ui/pages/recipes/load_one
execute store result score in itemdb run data get storage itemdb temp1[0][2][2]
data remove storage itemdb out
execute if score in itemdb matches 1.. run function itemdb:items/db/get
execute if score in itemdb matches ..-1 run function itemdb:ui/pages/recipes/vanilla
execute store result storage itemdb out.Count byte 1 run data get storage itemdb temp1[1][2][2]
data modify storage itemdb out.Slot set value 22b
function itemdb:ui/pages/recipes/load_one

execute store result score in itemdb run data get storage itemdb temp1[3][0]
execute if score in itemdb matches 0 run data modify storage itemdb out set value {id:"minecraft:bricks",Count:1b,tag:{has_id:1b,id:0,display:{Name:'{"text":"Shaped Crafting","italic":false}'}}}
execute if score in itemdb matches 1 run data modify storage itemdb out set value {id:"minecraft:water_bucket",Count:1b,tag:{has_id:1b,id:0,display:{Name:'{"text":"Shapeless Crafting","italic":false}'}}}
data modify storage itemdb out.Slot set value 25b
function itemdb:ui/pages/recipes/load_one