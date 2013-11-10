corners = ( Noise(argument0-1, argument1-1,argument2)+Noise(argument0+1, argument1-1,argument2)+Noise(argument0-1, argument1+1,argument2)+Noise(argument0+1, argument1+1,argument2) ) / 16
sides   = ( Noise(argument0-1, argument1,argument2)  +Noise(argument0+1, argument1,argument2)  +Noise(argument0, argument1-1,argument2)  +Noise(argument0, argument1+1,argument2) ) /  8
center  =  Noise(argument0, argument1,argument2) / 4
return corners + sides + center
