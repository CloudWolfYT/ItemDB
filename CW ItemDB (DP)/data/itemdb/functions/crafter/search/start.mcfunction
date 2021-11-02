data modify storage itemdb in append value [[1,2,3],[4,5,6],[7,8,9]]
function itemdb:crafter/db/compress/shaped
#tellraw @a {"nbt":"in","storage":"itemdb"}
data modify storage itemdb hold set from storage itemdb in
data modify storage itemdb in set from storage itemdb hold
function itemdb:crafter/db/compress/shapeless/start
data modify storage itemdb hold1 set from storage itemdb in
#tellraw @a {"nbt":"in","storage":"itemdb"}

# a b c
# d e f
# g h i
#tellraw @a {"nbt":"hold1","storage":"itemdb"}
execute store result score #a itemdb run data get storage itemdb hold[0][0][0]
execute store result score #b itemdb run data get storage itemdb hold[0][0][1]
execute store result score #c itemdb run data get storage itemdb hold[0][0][2]
execute store result score #d itemdb run data get storage itemdb hold[0][1][0]
execute store result score #e itemdb run data get storage itemdb hold[0][1][1]
execute store result score #f itemdb run data get storage itemdb hold[0][1][2]
execute store result score #g itemdb run data get storage itemdb hold[0][2][0]
execute store result score #h itemdb run data get storage itemdb hold[0][2][1]
execute store result score #i itemdb run data get storage itemdb hold[0][2][2]

### counts of items ###
execute store result score #ca itemdb run data get storage itemdb hold[1][0][0]
execute store result score #cb itemdb run data get storage itemdb hold[1][0][1]
execute store result score #cc itemdb run data get storage itemdb hold[1][0][2]
execute store result score #cd itemdb run data get storage itemdb hold[1][1][0]
execute store result score #ce itemdb run data get storage itemdb hold[1][1][1]
execute store result score #cf itemdb run data get storage itemdb hold[1][1][2]
execute store result score #cg itemdb run data get storage itemdb hold[1][2][0]
execute store result score #ch itemdb run data get storage itemdb hold[1][2][1]
execute store result score #ci itemdb run data get storage itemdb hold[1][2][2]

### generate mirror results ###
data modify storage itemdb hold2 set from storage itemdb hold
scoreboard players set #bool itemdb 1
execute if score #c itemdb matches 0 if score #f itemdb matches 0 if score #i itemdb matches 0 run scoreboard players set #bool itemdb 0
execute if score #bool itemdb matches 0 run function itemdb:crafter/search/mirror0
execute if score #bool itemdb matches 1 run function itemdb:crafter/search/mirror1

#tellraw @a {"nbt":"hold2","storage":"itemdb"}

### generate shapeless results ###
execute store result score #ia itemdb run data get storage itemdb hold1[0][0]
execute store result score #ib itemdb run data get storage itemdb hold1[0][1]
execute store result score #ic itemdb run data get storage itemdb hold1[0][2]
execute store result score #id itemdb run data get storage itemdb hold1[0][3]
execute store result score #ie itemdb run data get storage itemdb hold1[0][4]
execute store result score #if itemdb run data get storage itemdb hold1[0][5]
execute store result score #ig itemdb run data get storage itemdb hold1[0][6]
execute store result score #ih itemdb run data get storage itemdb hold1[0][7]
execute store result score #ii itemdb run data get storage itemdb hold1[0][8]

### counts of items ###
execute store result score #ica itemdb run data get storage itemdb hold1[1][0]
execute store result score #icb itemdb run data get storage itemdb hold1[1][1]
execute store result score #icc itemdb run data get storage itemdb hold1[1][2]
execute store result score #icd itemdb run data get storage itemdb hold1[1][3]
execute store result score #ice itemdb run data get storage itemdb hold1[1][4]
execute store result score #icf itemdb run data get storage itemdb hold1[1][5]
execute store result score #icg itemdb run data get storage itemdb hold1[1][6]
execute store result score #ich itemdb run data get storage itemdb hold1[1][7]
execute store result score #ici itemdb run data get storage itemdb hold1[1][8]

scoreboard players set #bool itemdb 0
execute if score #a itemdb matches 0 if score #b itemdb matches 0 if score #c itemdb matches 0 if score #d itemdb matches 0 if score #e itemdb matches 0 if score #f itemdb matches 0 if score #g itemdb matches 0 if score #h itemdb matches 0 if score #i itemdb matches 0 run scoreboard players set #bool itemdb 1
#tellraw @a {"text":""}
#tellraw @a [{"score":{"objective":"itemdb","name":"#a"}},{"text":","},{"score":{"objective":"itemdb","name":"#b"}},{"text":","},{"score":{"objective":"itemdb","name":"#c"}}]
#tellraw @a [{"score":{"objective":"itemdb","name":"#d"}},{"text":","},{"score":{"objective":"itemdb","name":"#e"}},{"text":","},{"score":{"objective":"itemdb","name":"#f"}}]
#tellraw @a [{"score":{"objective":"itemdb","name":"#g"}},{"text":","},{"score":{"objective":"itemdb","name":"#h"}},{"text":","},{"score":{"objective":"itemdb","name":"#i"}}]
#tellraw @a {"text":""}

#tellraw @a {"text":""}
#tellraw @a [{"score":{"objective":"itemdb","name":"#ma"}},{"text":","},{"score":{"objective":"itemdb","name":"#mb"}},{"text":","},{"score":{"objective":"itemdb","name":"#mc"}}]
#tellraw @a [{"score":{"objective":"itemdb","name":"#md"}},{"text":","},{"score":{"objective":"itemdb","name":"#me"}},{"text":","},{"score":{"objective":"itemdb","name":"#mf"}}]
#tellraw @a [{"score":{"objective":"itemdb","name":"#mg"}},{"text":","},{"score":{"objective":"itemdb","name":"#mh"}},{"text":","},{"score":{"objective":"itemdb","name":"#mi"}}]
#tellraw @a {"text":""}
scoreboard players set out itemdb -1
scoreboard players set out1 itemdb -1
scoreboard players set out2 itemdb 0
scoreboard players operation #loop itemdb = .recipes itemdb
data modify storage itemdb temp set from storage itemdb:recipes min
execute if score #bool itemdb matches 0 run function itemdb:crafter/search/loop

execute if score .vanilla_recipes itemdb matches 1 if score out itemdb matches -1 run function itemdb:crafter/search/vanilla/start
#tellraw @a {"score":{"objective":"itemdb","name":"out"}}
#tellraw @a {"score":{"objective":"itemdb","name":"out1"}}

execute if score out itemdb matches 0.. run function itemdb:crafter/result/start
