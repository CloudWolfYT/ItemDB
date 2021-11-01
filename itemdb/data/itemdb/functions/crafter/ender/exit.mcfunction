data modify storage itemdb temp set from entity @s EnderItems
data remove storage itemdb temp[{tag:{id:0}}]
data remove storage itemdb temp[{tag:{crafted_item:1b}}]
data remove block 69 1 69 Items
data modify block 69 1 69 Items set from storage itemdb temp
loot give @s mine 69 1 69 air{drop_contents:true}

data remove block 69 1 69 Items
data modify block 69 1 69 Items set from entity @s Inventory[{Slot:103b}].tag.EnderItems
execute if data entity @s Inventory[{Slot:103b}].tag.ender_placeholder run item replace entity @s armor.head with air
item modify entity @s armor.head itemdb:unlock_ender

tag @s remove locked_ender
item replace entity @s enderchest.0 from block 69 1 69 container.0
item replace entity @s enderchest.1 from block 69 1 69 container.1
item replace entity @s enderchest.2 from block 69 1 69 container.2
item replace entity @s enderchest.3 from block 69 1 69 container.3
item replace entity @s enderchest.4 from block 69 1 69 container.4
item replace entity @s enderchest.5 from block 69 1 69 container.5
item replace entity @s enderchest.6 from block 69 1 69 container.6
item replace entity @s enderchest.7 from block 69 1 69 container.7
item replace entity @s enderchest.8 from block 69 1 69 container.8
item replace entity @s enderchest.9 from block 69 1 69 container.9
item replace entity @s enderchest.10 from block 69 1 69 container.10
item replace entity @s enderchest.11 from block 69 1 69 container.11
item replace entity @s enderchest.12 from block 69 1 69 container.12
item replace entity @s enderchest.13 from block 69 1 69 container.13
item replace entity @s enderchest.14 from block 69 1 69 container.14
item replace entity @s enderchest.15 from block 69 1 69 container.15
item replace entity @s enderchest.16 from block 69 1 69 container.16
item replace entity @s enderchest.17 from block 69 1 69 container.17
item replace entity @s enderchest.18 from block 69 1 69 container.18
item replace entity @s enderchest.19 from block 69 1 69 container.19
item replace entity @s enderchest.20 from block 69 1 69 container.20
item replace entity @s enderchest.21 from block 69 1 69 container.21
item replace entity @s enderchest.22 from block 69 1 69 container.22
item replace entity @s enderchest.23 from block 69 1 69 container.23
item replace entity @s enderchest.24 from block 69 1 69 container.24
item replace entity @s enderchest.25 from block 69 1 69 container.25
item replace entity @s enderchest.26 from block 69 1 69 container.26

#tellraw @a {"nbt":"EnderItems","entity":"@s"}