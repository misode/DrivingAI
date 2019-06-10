execute positioned 0 16 0 run function dai:car/create
scoreboard players remove #population dai 1
execute if score #population dai matches 1.. run function dai:create_population
