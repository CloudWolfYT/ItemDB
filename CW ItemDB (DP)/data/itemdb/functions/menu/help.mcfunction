playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s [{"text":"","underlined":true,"color":"#7ceded"},{"text":"       I","color":"#7ceded"},{"text":"t","color":"#90f0f0"},{"text":"e","color":"#a5f3f3"},{"text":"m","color":"#baf6f6"},{"text":" ","color":"#cef8f8"},{"text":"D","color":"#e3fbfb"},{"text":"a","color":"#f8fefe"},{"text":"t","color":"#f0fdfd"},{"text":"a","color":"#d9fafa"},{"text":"b","color":"#c2f7f7"},{"text":"a","color":"#aaf3f3"},{"text":"s","color":"#93f1f1"},{"text":"e       ","color":"#7ceded"}]
tellraw @s {"text":"   a pack by Cloud_Wolf\n","color":"gray"}
tellraw @s {"text":"  Below are links to various helpful places!"}
tellraw @s {"text":""}
tellraw @a [{"text":"  "},{"text":"⛃ Video on Item Database (core)","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=dApKqRxw0j8"},"color":"#9e9ee8"}]
tellraw @a [{"text":"  "},{"text":"⛏ Video on Crafter","clickEvent":{"action":"open_url","value":"https://www.youtube.com/watch?v=iyRyX-o4184"},"color":"#9e9ee8"}]
tellraw @a [{"text":"  "},{"text":"⎙ Exporting to Commands","clickEvent":{"action":"open_url","value":"https://www.google.com"},"color":"#9e9ee8"}]
tellraw @s {"text":""}
tellraw @s {"text":"  For any questions not answered by the videos:"}
tellraw @a [{"text":"  "},{"text":"☁ Link to Discord Server","clickEvent":{"action":"open_url","value":"https://discord.gg/nBH3dA3f3e"},"color":"#9e9ee8"}]
tellraw @s {"text":""}
tellraw @s {"text":"  ⎗ Main Menu","clickEvent":{"action":"run_command","value":"/function itemdb:menu/start"}}

#⎙⎆⎚☑︎☒�⛏☁☕⛃