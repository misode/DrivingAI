execute store result score #mx dai run data get entity @s Motion[0] 100000
execute store result score #mz dai run data get entity @s Motion[2] 100000
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1 {Tags:["dai.move_vector"]}
execute as @e[type=area_effect_cloud,tag=dai.move_vector] run function dai:car/get_vector
scoreboard players operation #tx dai *= #move dai
scoreboard players operation #tz dai *= #move dai
scoreboard players operation #mx dai += #tx dai
scoreboard players operation #mz dai += #tz dai
execute store result entity @s Motion[0] double 0.000001 run scoreboard players operation #mx dai /= 2 dai.const
execute store result entity @s Motion[2] double 0.000001 run scoreboard players operation #mz dai /= 2 dai.const
