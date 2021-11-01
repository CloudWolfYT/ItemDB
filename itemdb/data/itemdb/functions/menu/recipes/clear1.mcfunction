data remove storage itemdb:recipes list
data remove storage itemdb:recipes min
scoreboard players set .recipes itemdb 0
function itemdb:crafter/db/append
data modify storage itemdb flavor set value '{"text":"ALL RECIPES DELETED","color":"gray"}'
function itemdb:menu/recipes/start
#⎙⎆⎚