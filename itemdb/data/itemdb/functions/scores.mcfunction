scoreboard players enable @s[gamemode=creative] itemdb_menu
scoreboard players enable @s[gamemode=creative] itemdb_ui
scoreboard players enable @s[gamemode=creative] itemdb_get

execute if score @s itemdb_menu matches 1.. run function itemdb:menu/start
execute if score @s itemdb_ui matches 1.. at @s run function itemdb:ui/place
execute unless score @s itemdb_get matches 0 run function itemdb:get_by_id

scoreboard players operation #temp itemdb = @s itemdb_open
scoreboard players operation #temp itemdb += @s itemdb_open1
scoreboard players operation #temp itemdb += @s itemdb_v_open
scoreboard players operation #temp itemdb += @s itemdb_v_open1
scoreboard players operation #temp itemdb += @s itemdb_v_open2
scoreboard players operation #temp itemdb += @s itemdb_v_open3
scoreboard players operation #temp itemdb += @s itemdb_v_open4
scoreboard players operation #temp itemdb += @s itemdb_v_open5
scoreboard players operation #temp itemdb += @s itemdb_v_open6
scoreboard players operation #temp itemdb += @s itemdb_v_open7
scoreboard players operation #temp itemdb += @s itemdb_v_open8
scoreboard players operation #temp itemdb += @s itemdb_v_open9
scoreboard players operation #temp itemdb += @s itemdb_v_open10

execute if score @s itemdb_v_opene matches 1.. run function itemdb:versioner/enderchest/start
execute if score #temp itemdb matches 1.. run function itemdb:ui/find/start