execute store result score #temp itemdb run data get storage itemdb temp[-1][0]
execute store result score #temp1 itemdb run data get storage itemdb temp[-1][1]
#tellraw @a [{"score":{"objective":"itemdb","name":"#a"}},{"text":","},{"score":{"objective":"itemdb","name":"#b"}},{"text":" => "},{"score":{"objective":"itemdb","name":"#temp"}},{"text":","},{"score":{"objective":"itemdb","name":"#temp1"}}]
execute if score #a itemdb = #temp itemdb if score #b itemdb = #temp1 itemdb store result score out itemdb run data get storage itemdb temp[-1][2]

data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:brewer/search/loop