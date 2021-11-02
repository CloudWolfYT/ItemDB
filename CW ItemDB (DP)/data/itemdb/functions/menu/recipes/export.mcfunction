playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"","underlined":true,"color":"aqua"},{"text":"       ","color":"aqua"},{"text":" ","color":"#57fefe"},{"text":" ","color":"#6ffefe"},{"text":" ","color":"#87fefe"},{"text":" ","color":"#9ffefe"},{"text":"R","color":"#b7fefe"},{"text":"e","color":"#cffefe"},{"text":"c","color":"#e7fefe"},{"text":"i","color":"white"},{"text":"p","color":"#e7fefe"},{"text":"e","color":"#cffefe"},{"text":"s","color":"#b7fefe"},{"text":" ","color":"#9ffefe"},{"text":" ","color":"#87fefe"},{"text":" ","color":"#6ffefe"},{"text":"       ","color":"#57fefe"},{"text":" ","color":"aqua"}]
tellraw @s {"text":"   a pack by Cloud_Wolf\n","color":"gray"}
tellraw @s {"text":"  Exporting Recipes will overwrite \n  any awaiting imported recipes!\n  Are you sure you want to export?\n"}
tellraw @s {"text":"  Yes, export! ☑","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/export1"},"color":"#8aff8a"}
tellraw @s {"text":"  No, don\'t export! ☒","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/start"},"color":"#ff8c8a"}
tellraw @s {"text":"  ⎗ Recipe Menu","clickEvent":{"action":"run_command","value":"/function itemdb:menu/recipes/start"}}

#⎙⎆⎚☑︎☒