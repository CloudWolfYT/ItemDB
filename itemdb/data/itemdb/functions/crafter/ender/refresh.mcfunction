function itemdb:crafter/player_io
function itemdb:crafter/prune/start
function itemdb:crafter/search/start
item replace entity @s enderchest.15 with air
execute if score out itemdb matches 0.. run function itemdb:crafter/ender/result
execute if score #player_io itemdb matches 1.. run function itemdb:crafter/ender/get
function itemdb:crafter/ender/mask