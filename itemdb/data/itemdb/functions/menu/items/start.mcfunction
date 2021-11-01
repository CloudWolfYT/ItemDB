playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
scoreboard players reset @s itemdb_menu
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"nbt":"flavor","storage":"itemdb","interpret":true},{"score":{"objective":"itemdb","name":"#flavor"}}]
tellraw @s [{"text":"","underlined":true,"color":"#7ceded"},{"text":"       I","color":"#7ceded"},{"text":"t","color":"#90f0f0"},{"text":"e","color":"#a5f3f3"},{"text":"m","color":"#baf6f6"},{"text":" ","color":"#cef8f8"},{"text":"D","color":"#e3fbfb"},{"text":"a","color":"#f8fefe"},{"text":"t","color":"#f0fdfd"},{"text":"a","color":"#d9fafa"},{"text":"b","color":"#c2f7f7"},{"text":"a","color":"#aaf3f3"},{"text":"s","color":"#93f1f1"},{"text":"e       ","color":"#7ceded"}]
tellraw @s {"text":"   a pack by Cloud_Wolf\n","color":"gray"}
tellraw @s [{"text":"  Total Recipes: "},{"score":{"objective":"itemdb","name":".items"}}]
tellraw @s {"text":""}
execute if score .vanilla_scan itemdb matches 0 run tellraw @s [{"text":"  Vanilla Linker "},{"text":"[Y]","color":"#8aff8a","bold":false,"clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/vanilla_y"}},{"text":""},{"text":" [N]","color":"#ff8c8a","bold":true}]
execute if score .vanilla_scan itemdb matches 1 run tellraw @s [{"text":"  Vanilla Linker "},{"text":"[Y]","color":"#8aff8a","bold":true},{"text":""},{"text":" [N]","color":"#ff8c8a","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/vanilla_n"},"bold":false}]
tellraw @s {"text":""}
tellraw @s {"text":"  Import Items ⎆","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/import"}}
tellraw @s {"text":"  Export Items ⎙","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/export"}}
tellraw @s {"text":"  Clear Items ⎚","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/clear"}}
tellraw @s {"text":"\n  ⎗ Main Menu","clickEvent":{"action":"run_command","value":"/function itemdb:menu/start"}}

data remove storage itemdb flavor
scoreboard players reset #flavor itemdb