playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"nbt":"flavor","storage":"itemdb","interpret":true},{"score":{"objective":"itemdb","name":"#flavor"}}]
tellraw @s [{"text":"","underlined":true,"color":"aqua"},{"text":"       ","color":"aqua"},{"text":" ","color":"#57fefe"},{"text":" ","color":"#6ffefe"},{"text":" ","color":"#87fefe"},{"text":" ","color":"#9ffefe"},{"text":"R","color":"#b7fefe"},{"text":"e","color":"#cffefe"},{"text":"c","color":"#e7fefe"},{"text":"i","color":"white"},{"text":"p","color":"#e7fefe"},{"text":"e","color":"#cffefe"},{"text":"s","color":"#b7fefe"},{"text":" ","color":"#9ffefe"},{"text":" ","color":"#87fefe"},{"text":" ","color":"#6ffefe"},{"text":"       ","color":"#57fefe"},{"text":" ","color":"aqua"}]
tellraw @s {"text":"   a pack by Cloud_Wolf\n","color":"gray"}
execute if score .vanilla_recipes itemdb matches 0 run tellraw @s [{"text":"  Total Recipes: "},{"score":{"objective":"itemdb","name":".recipes"}}]
execute if score .vanilla_recipes itemdb matches 1 store result score #temp itemdb run data get storage itemdb vanilla_recipes
execute if score .vanilla_recipes itemdb matches 1 run tellraw @s [{"text":"  Total Recipes: "},{"score":{"objective":"itemdb","name":".recipes"}},{"text":" + "},{"score":{"objective":"itemdb","name":"#temp"}}]
tellraw @s {"text":""}
tellraw @s {"text":"  Place Barrel Crafter","clickEvent":{"action":"run_command","value":"/function itemdb:crafter/barrel/place"},"hoverEvent":{"action":"show_text","contents":[{"text":"Function for this is:\n","color":"gray"},{"text":"/function itemdb:crafter/barrel/place","color":"#ffc88a"}]}}
tellraw @s {"text":"  Place Ender Crafter","clickEvent":{"action":"run_command","value":"/function itemdb:crafter/ender/place"},"hoverEvent":{"action":"show_text","contents":[{"text":"Function for this is:\n","color":"gray"},{"text":"/function itemdb:crafter/ender/place","color":"#ffc88a"}]}}
tellraw @s {"text":""}
execute if score .vanilla_recipes itemdb matches 0 run tellraw @s [{"text":"  Vanilla Recipes "},{"text":"[Y]","color":"#8aff8a","bold":false,"clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/vanilla_y"}},{"text":""},{"text":" [N]","color":"#ff8c8a","bold":true}]
execute if score .vanilla_recipes itemdb matches 1 run tellraw @s [{"text":"  Vanilla Recipes "},{"text":"[Y]","color":"#8aff8a","bold":true},{"text":""},{"text":" [N]","color":"#ff8c8a","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/vanilla_n"},"bold":false}]
tellraw @s {"text":""}
tellraw @s {"text":"  Import Recipes ⎆","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/import"}}
tellraw @s {"text":"  Export Recipes ⎙","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/export"}}
tellraw @s {"text":"  Clear Recipes ⎚","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/clear"}}
tellraw @s {"text":"\n  ⎗ Main Menu","clickEvent":{"action":"run_command","value":"/function itemdb:menu/start"}}

#⎙⎆⎚
data remove storage itemdb flavor
scoreboard players reset #flavor itemdb