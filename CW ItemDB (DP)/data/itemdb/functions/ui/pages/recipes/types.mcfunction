execute store result score #temp itemdb run data get storage itemdb out[3][0]
execute if score #temp itemdb matches 0 run data modify storage itemdb in[3][0] set value 1
execute if score #temp itemdb matches 1 run data modify storage itemdb in[3][0] set value 0