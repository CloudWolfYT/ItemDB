setblock ~ ~ ~ brewing_stand{CustomName:'{"text":"Custom Brewer"}'}
execute align xyz unless entity @e[tag=itemdb,tag=brewer,dx=0] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["itemdb","brewer","no_ui"]}