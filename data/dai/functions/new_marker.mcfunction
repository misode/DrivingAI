tag @s remove dai.new

data merge entity @s {Invisible:1b,NoGravity:1b,Small:1b}
scoreboard players operation @s dai.marker = #markers dai
scoreboard players add #markers dai 1
