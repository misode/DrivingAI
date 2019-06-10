tag @s add dai.source
execute store result score #new_population dai if entity @e[type=armor_stand,tag=dai.car,tag=!dai.parent]
execute if score #new_population dai < population dai positioned 0 16 0 run function dai:car/create
tag @s remove dai.source
