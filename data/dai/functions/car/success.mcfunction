tag @s add dai.success
data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:yellow_concrete",Count:1b}]}
execute store result score #points dai if entity @e[type=armor_stand,tag=dai.car,tag=!dai.success]
scoreboard players operation @s dai.fitness += #points dai
