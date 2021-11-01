data modify storage itemdb_buffer:recipes list set from storage itemdb:recipes list
data modify storage itemdb_buffer:recipes min set from storage itemdb:recipes min
data modify storage itemdb flavor set value '{"text":"Recipes exported to: \\"<save>/data/command_storage_itemdb_buffer.dat\\"","color":"gray"}'
function itemdb:menu/recipes/start
#⎙⎆⎚