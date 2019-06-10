scoreboard objectives add dai.const dummy
scoreboard players set 2 dai.const 2
scoreboard players set 5 dai.const 5
scoreboard players set 100 dai.const 100

scoreboard objectives add dai.random dummy
execute unless score seed dai.random matches -2147483648.. run scoreboard players set seed dai.random 731031
scoreboard players set mult dai.random 1664525
scoreboard players set incr dai.random 1013904223

scoreboard objectives add dai dummy
scoreboard players add running dai 0
execute unless score population dai matches 2.. run scoreboard players set population dai 10

scoreboard objectives add dai.marker dummy

# Properties of a car
scoreboard objectives add dai.stil dummy
scoreboard objectives add dai.fitness dummy

scoreboard objectives add dai.x1 dummy
scoreboard objectives add dai.x2 dummy
scoreboard objectives add dai.x3 dummy
scoreboard objectives add dai.x4 dummy
scoreboard objectives add dai.x5 dummy
scoreboard objectives add dai.x6 dummy

scoreboard objectives add dai.w1 dummy
scoreboard objectives add dai.w2 dummy
scoreboard objectives add dai.w3 dummy
scoreboard objectives add dai.w4 dummy
scoreboard objectives add dai.w5 dummy
scoreboard objectives add dai.w6 dummy
scoreboard objectives add dai.w7 dummy
scoreboard objectives add dai.w8 dummy
scoreboard objectives add dai.w9 dummy
scoreboard objectives add dai.w10 dummy
scoreboard objectives add dai.w11 dummy
scoreboard objectives add dai.w12 dummy

scoreboard objectives add dai.b1 dummy
scoreboard objectives add dai.b2 dummy

scoreboard objectives add dai.y1 dummy
scoreboard objectives add dai.y2 dummy

# Create sign
setblock 0 1 0 oak_sign

tellraw @a {"text":"Done!","color":"green"}
