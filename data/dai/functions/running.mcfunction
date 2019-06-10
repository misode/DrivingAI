execute as @e[type=armor_stand,tag=dai.car,tag=!dai.dead] at @s run function dai:car/tick

execute store result score alive dai if entity @e[type=armor_stand,tag=dai.car,tag=!dai.dead]
execute store result score #driving dai if entity @e[type=armor_stand,tag=dai.car,tag=!dai.dead,tag=!dai.success]

scoreboard players add #time dai 1
execute if score #driving dai matches 0 run function dai:next_generation
execute if score #time dai matches 1200.. run function dai:next_generation
