data modify storage itemdb in set from storage itemdb temp[-1]
execute store result score #temp itemdb run data modify storage itemdb in set from storage itemdb out
execute if score #temp itemdb matches 1 run function itemdb:ui/pages/items/update