data modify storage itemdb temp set from block ~ ~-1 ~ Items
setblock ~ ~-1 ~ hopper[enabled=false]
data modify block ~ ~-1 ~ Items set from storage itemdb temp