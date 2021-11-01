execute if score #slot itemdb matches 19 run data modify storage itemdb in[0] set from storage itemdb temp[-1].tag.id
execute if score #slot itemdb matches 22 run data modify storage itemdb in[1] set from storage itemdb temp[-1].tag.id
scoreboard players set #bool1 itemdb 1