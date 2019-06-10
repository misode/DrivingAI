tag @s add dai.source
summon minecraft:armor_stand ~ ~ ~ {Tags:["dai.car","dai.new"]}
execute if score generation dai matches 0 as @e[type=armor_stand,tag=dai.car,tag=dai.new,limit=1] run function dai:car/init_random
execute if score generation dai matches 1.. as @e[type=armor_stand,tag=dai.car,tag=dai.new,limit=1] run function dai:car/init_offspring
tag @s remove dai.source
