data modify storage itemdb out set value [[],[],[]]
data modify storage itemdb out[0] append from storage itemdb in[0][0][]
data modify storage itemdb out[0] append from storage itemdb in[0][1][]
data modify storage itemdb out[0] append from storage itemdb in[0][2][]
data modify storage itemdb out[1] append from storage itemdb in[1][0][]
data modify storage itemdb out[1] append from storage itemdb in[1][1][]
data modify storage itemdb out[1] append from storage itemdb in[1][2][]
data modify storage itemdb out[2] append from storage itemdb in[2][0][]
data modify storage itemdb out[2] append from storage itemdb in[2][1][]
data modify storage itemdb out[2] append from storage itemdb in[2][2][]

summon marker ~ ~ ~ {Tags:["compressor.0","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.1","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.2","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.3","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.4","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.5","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.6","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.7","compressor"]}
summon marker ~ ~ ~ {Tags:["compressor.8","compressor"]}
execute as @e[type=marker,tag=compressor] run function itemdb:crafter/db/compress/shapeless/load
data modify storage itemdb in set value [[],[],[]]

scoreboard players set #min itemdb 99999
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
scoreboard players operation #min itemdb < @e[type=marker,tag=compressor] itemdb
execute as @e[type=marker,tag=compressor] if score @s itemdb = #min itemdb run function itemdb:crafter/db/compress/shapeless/min
kill @e[type=marker,tag=compressor]