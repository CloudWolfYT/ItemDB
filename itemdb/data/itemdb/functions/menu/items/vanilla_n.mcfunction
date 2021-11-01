scoreboard players set .vanilla_scan itemdb 0
data modify storage itemdb_buffer:recipes min set from storage itemdb:recipes min
data modify storage itemdb flavor set value '{"text":"Vanilla Linker turned off!","color":"gray"}'
function itemdb:menu/items/start
#⎙⎆⎚