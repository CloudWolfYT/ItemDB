#execute store result score in itemdb run clear @s #itemdb:all_items{has_id:1b,id:0}

scoreboard players operation #versioner itemdb = @s itemdb_v_open
scoreboard players operation #versioner itemdb += @s itemdb_v_open1
scoreboard players operation #versioner itemdb += @s itemdb_v_open2
scoreboard players operation #versioner itemdb += @s itemdb_v_open3
scoreboard players operation #versioner itemdb += @s itemdb_v_open4
scoreboard players operation #versioner itemdb += @s itemdb_v_open5
scoreboard players operation #versioner itemdb += @s itemdb_v_open6
scoreboard players operation #versioner itemdb += @s itemdb_v_open7
scoreboard players operation #versioner itemdb += @s itemdb_v_open8
scoreboard players operation #versioner itemdb += @s itemdb_v_open9
scoreboard players operation #versioner itemdb += @s itemdb_v_open10

tag @s add this
scoreboard players set #ray itemdb 10
execute at @s anchored eyes run function itemdb:ui/find/raycast
tag @s remove this

execute if score #ray itemdb matches 0 if entity @s[tag=barrel_craft] run function itemdb:crafter/barrel/exit
execute if score #ray itemdb matches 0 if entity @s[tag=ender_craft,tag=locked_ender] run function itemdb:crafter/ender/exit

execute if score #ray itemdb matches 0 run function itemdb:ui/find/tag_reset
execute if score #ray itemdb matches 0 run function itemdb:ui/find/reset
function itemdb:ui/find/reset1