scoreboard players operation @s itemdb_id = @s itemdb_search
scoreboard players operation @s itemdb_search %= #3 itemdb
scoreboard players operation @s itemdb_id -= @s itemdb_search
scoreboard players reset @s itemdb_search
scoreboard players set #bool itemdb 2