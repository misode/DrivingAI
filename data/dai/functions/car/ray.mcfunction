execute unless block ~ ~ ~ minecraft:white_concrete run scoreboard players add #length dai 1
execute if score #length dai matches ..100 unless block ~ ~ ~ minecraft:white_concrete positioned ^ ^ ^0.2 run function dai:car/ray
