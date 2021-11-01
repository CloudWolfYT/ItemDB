scoreboard players set .vanilla_recipes itemdb 0
data remove storage itemdb vanilla_recipes
data modify storage itemdb flavor set value '{"text":"Vanilla Recipes NOT in crafter!","color":"gray"}'
function itemdb:menu/recipes/start
#⎙⎆⎚