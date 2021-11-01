data modify storage itemdb in append from storage itemdb temp[-1]
data modify storage itemdb in[-1] merge from storage itemdb out
data modify storage itemdb in[-1].Slot set from storage itemdb temp[-1].Slot
data modify storage itemdb in[-1].Count set from storage itemdb temp[-1].Count