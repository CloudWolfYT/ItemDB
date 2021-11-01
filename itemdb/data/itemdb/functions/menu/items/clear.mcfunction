playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"","underlined":true,"color":"#7ceded"},{"text":"       I","color":"#7ceded"},{"text":"t","color":"#90f0f0"},{"text":"e","color":"#a5f3f3"},{"text":"m","color":"#baf6f6"},{"text":" ","color":"#cef8f8"},{"text":"D","color":"#e3fbfb"},{"text":"a","color":"#f8fefe"},{"text":"t","color":"#f0fdfd"},{"text":"a","color":"#d9fafa"},{"text":"b","color":"#c2f7f7"},{"text":"a","color":"#aaf3f3"},{"text":"s","color":"#93f1f1"},{"text":"e       ","color":"#7ceded"}]
tellraw @s {"text":"   a pack by Cloud_Wolf\n","color":"gray"}
tellraw @s {"text":"  This will delete every item \n  in the database!\n  Are you sure you want to clear?\n"}
tellraw @s {"text":"  Yes, clear it! ☑","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/clear1"},"color":"#8aff8a"}
tellraw @s {"text":"  No, don\'t clear it! ☒","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/start"},"color":"#ff8c8a"}
tellraw @s {"text":"  ⎗ Item Menu","clickEvent":{"action":"run_command","value":"/function itemdb:menu/items/start"}}

#⎙⎆⎚☑︎☒