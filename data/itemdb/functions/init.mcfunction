scoreboard objectives add itemdb dummy
scoreboard objectives add itemdb_page dummy
scoreboard objectives add itemdb_id dummy
scoreboard objectives add itemdb_search dummy
scoreboard objectives add itemdb_open minecraft.custom:minecraft.open_barrel
scoreboard objectives add itemdb_open1 minecraft.custom:minecraft.open_enderchest
scoreboard objectives add itemdb_menu trigger
scoreboard objectives add itemdb_ui trigger
scoreboard objectives add itemdb_get trigger

scoreboard players set #64 itemdb 64
scoreboard players set #21 itemdb 21
scoreboard players set #3 itemdb 3
scoreboard players set #1 itemdb 1
scoreboard players set #-1 itemdb -1

scoreboard players set #reload itemdb 1
forceload add 69 69


scoreboard players add .items itemdb 0
scoreboard players add .recipes itemdb 0
scoreboard players add .brews itemdb 0
scoreboard players add .smiths itemdb 0
execute if score .items itemdb matches 0 run function itemdb:items/db/append
execute if score .recipes itemdb matches 0 run function itemdb:crafter/db/append
execute if score .brews itemdb matches 0 run function itemdb:brewer/db/append
execute if score .smiths itemdb matches 0 run function itemdb:smither/db/append
execute unless data storage itemdb vanilla run function itemdb:items/vanilla/create
scoreboard players add .vanilla_scan itemdb 0
scoreboard players add .vanilla_recipes itemdb 0

### versioner container control ###
scoreboard objectives add itemdb_v_vanilla dummy
scoreboard objectives add itemdb_v_relog minecraft.custom:minecraft.leave_game
scoreboard objectives add itemdb_v_opene minecraft.custom:minecraft.open_enderchest
scoreboard objectives add itemdb_v_open minecraft.custom:minecraft.open_barrel
scoreboard objectives add itemdb_v_open1 minecraft.custom:minecraft.open_chest
scoreboard objectives add itemdb_v_open2 minecraft.custom:minecraft.open_shulker_box
scoreboard objectives add itemdb_v_open3 minecraft.custom:minecraft.interact_with_blast_furnace
scoreboard objectives add itemdb_v_open4 minecraft.custom:minecraft.interact_with_brewingstand
scoreboard objectives add itemdb_v_open5 minecraft.custom:minecraft.interact_with_furnace
scoreboard objectives add itemdb_v_open6 minecraft.custom:minecraft.interact_with_smoker
scoreboard objectives add itemdb_v_open7 minecraft.custom:minecraft.inspect_dispenser
scoreboard objectives add itemdb_v_open8 minecraft.custom:minecraft.inspect_dropper
scoreboard objectives add itemdb_v_open9 minecraft.custom:minecraft.inspect_hopper
scoreboard objectives add itemdb_v_open10 minecraft.custom:minecraft.trigger_trapped_chest

scoreboard players set #temp itemdb 17
execute unless score .version itemdb = #temp itemdb run function itemdb:new_version