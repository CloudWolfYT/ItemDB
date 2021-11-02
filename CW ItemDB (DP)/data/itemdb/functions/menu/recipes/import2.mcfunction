data remove storage itemdb:recipes list
data remove storage itemdb:recipes min
execute if data storage itemdb_buffer:recipes list run data modify storage itemdb:recipes list set from storage itemdb_buffer:recipes list
execute if data storage itemdb_buffer:recipes list run data modify storage itemdb:recipes min set from storage itemdb_buffer:recipes min
execute store result score #flavor itemdb run data get storage itemdb:recipes list
scoreboard players operation .recipes itemdb = #flavor itemdb
data modify storage itemdb flavor set value '{"text":"Recipes overwritten by imported list! New Recipe Count: ","color":"gray"}'
function itemdb:menu/recipes/start
#⎙⎆⎚