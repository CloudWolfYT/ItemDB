scoreboard players set #bool itemdb 0
scoreboard players operation .search itemdb = @s itemdb
execute as @a[distance=..8] if score @s itemdb = .search itemdb run scoreboard players set #bool itemdb 1
#tellraw @a {"score":{"objective":"itemdb","name":"#bool"}}
execute if score @s itemdb matches 1.. if score #bool itemdb matches 0 run data remove block ~ ~ ~ Items
execute if score @s itemdb matches 1.. if score #bool itemdb matches 0 run setblock ~ ~ ~ air
execute if score @s itemdb matches 1.. if score #bool itemdb matches 0 run kill @e[distance=..1]