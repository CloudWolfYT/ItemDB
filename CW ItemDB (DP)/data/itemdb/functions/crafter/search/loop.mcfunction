execute store result score #shapeless itemdb run data get storage itemdb temp[-1][3][0]
execute store result score #temp itemdb run data get storage itemdb temp[-1][0][0][0]
execute if score #shapeless itemdb matches 0 if score #temp itemdb = #a itemdb run function itemdb:crafter/search/shaped/matched0
execute store result score #temp itemdb run data get storage itemdb temp[-1][0][0][0]
execute if score #shapeless itemdb matches 0 if score #loop itemdb matches 1.. if score #temp itemdb = #ma itemdb run function itemdb:crafter/search/mirrored/matched0
execute store result score #temp itemdb run data get storage itemdb temp[-1][0][0]
execute if score #shapeless itemdb matches 1 if score #loop itemdb matches 1.. if score #temp itemdb = #ia itemdb run function itemdb:crafter/search/shapeless/matched0

data remove storage itemdb temp[-1]
scoreboard players remove #loop itemdb 1
execute if score #loop itemdb matches 1.. run function itemdb:crafter/search/loop