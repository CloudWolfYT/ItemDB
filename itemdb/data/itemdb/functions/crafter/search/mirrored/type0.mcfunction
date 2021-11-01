data modify storage itemdb out set value [[[0,0],[0,0],[0,0]],[[0,0],[0,0],[0,0]]]
data modify storage itemdb out[1][0][0] set from storage itemdb temp[-1][1][0][1]
data modify storage itemdb out[1][0][1] set from storage itemdb temp[-1][1][0][0]
data modify storage itemdb out[1][1][0] set from storage itemdb temp[-1][1][1][1]
data modify storage itemdb out[1][1][1] set from storage itemdb temp[-1][1][1][0]
data modify storage itemdb out[1][2][0] set from storage itemdb temp[-1][1][2][1]
data modify storage itemdb out[1][2][1] set from storage itemdb temp[-1][1][2][0]
#tellraw @a {"nbt":"temp[-1]","storage":"itemdb"}