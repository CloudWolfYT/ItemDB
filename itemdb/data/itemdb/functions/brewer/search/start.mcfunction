data modify storage itemdb temp set from storage itemdb:brewer list
execute store result score #a itemdb run data get storage itemdb in[0]
execute store result score #b itemdb run data get storage itemdb in[1]
scoreboard players set out itemdb 0
execute store result score #loop itemdb run data get storage itemdb temp
execute if score #loop itemdb matches 1.. run function itemdb:brewer/search/loop