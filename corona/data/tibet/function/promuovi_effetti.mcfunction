title @a title {"text":""}
title @a subtitle {"text":"Un nuovo imperatore è arrivato!","color":"gold","bold":true}
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 1 1
tag @s add imperatore
tag @s add corona_cooldown
schedule function tibet:fine_cooldown 5t replace
