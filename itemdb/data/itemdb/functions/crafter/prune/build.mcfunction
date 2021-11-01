execute if score #slot itemdb matches 21 run data modify storage itemdb in[0][2][2] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 20 run data modify storage itemdb in[0][2][1] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 19 run data modify storage itemdb in[0][2][0] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 12 run data modify storage itemdb in[0][1][2] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 11 run data modify storage itemdb in[0][1][1] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 10 run data modify storage itemdb in[0][1][0] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 3 run data modify storage itemdb in[0][0][2] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 2 run data modify storage itemdb in[0][0][1] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 1 run data modify storage itemdb in[0][0][0] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 21 store result storage itemdb in[1][2][2] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 20 store result storage itemdb in[1][2][1] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 19 store result storage itemdb in[1][2][0] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 12 store result storage itemdb in[1][1][2] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 11 store result storage itemdb in[1][1][1] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 10 store result storage itemdb in[1][1][0] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 3 store result storage itemdb in[1][0][2] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 2 store result storage itemdb in[1][0][1] int 1 run data get storage itemdb temp[-1].Count
execute if score #slot itemdb matches 1 store result storage itemdb in[1][0][0] int 1 run data get storage itemdb temp[-1].Count
scoreboard players set #bool1 itemdb 1