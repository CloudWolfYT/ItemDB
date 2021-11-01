data modify storage itemdb:recipes list append from storage itemdb_buffer:recipes list[]
data modify storage itemdb:recipes min append from storage itemdb_buffer:recipes min[]
execute store result score #flavor itemdb run data get storage itemdb_buffer:recipes list
scoreboard players operation .recipes itemdb += #flavor itemdb
data modify storage itemdb flavor set value '{"text":"Recipes appended from imported list! Recipes Added: ","color":"gray"}'
function itemdb:menu/recipes/start
#⎙⎆⎚