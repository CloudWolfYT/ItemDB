tag @s add this
data modify block 69 2 69 Text1 set value '[{"text":"ID="},{"nbt":"Item.tag.id","entity":"@e[tag=this,limit=1]"},{"text":", V="},{"nbt":"Item.tag.version","entity":"@e[tag=this,limit=1]"}]'
data modify entity @s CustomName set from block 69 2 69 Text1
data modify entity @s CustomNameVisible set value 1b
tag @s remove this