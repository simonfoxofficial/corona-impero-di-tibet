execute if entity @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tibet:{corona:1b}}}}}] as @a[tag=imperatore] run function tibet:destituisci
execute as @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{tibet:{corona:1b}}}}}] run data modify entity @s Age set value -32768s
