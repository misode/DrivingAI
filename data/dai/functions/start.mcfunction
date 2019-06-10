kill @e[type=armor_stand,tag=dai.car]
scoreboard players set generation dai 0
scoreboard players operation #population dai = population dai
function dai:create_population

scoreboard players set #time dai 1
scoreboard players set running dai 1
