var radius,z;
z = 32*global.ZMOD
radius = 32
draw_set_color(c_white)
draw_ellipse(argument0-radius,argument1-radius*global.YMOD+z,argument0+radius,argument1+radius*global.YMOD+z,false)
draw_set_color(c_dkgray)
draw_ellipse(argument0-radius,argument1-radius*global.YMOD+z,argument0+radius,argument1+radius*global.YMOD+z,true)
draw_rectangle(argument0-radius,argument1+z-1,argument0+radius,argument1+1,true)
draw_set_color(c_white)
draw_rectangle(argument0-radius+1,argument1+z,argument0+radius-1,argument1,false)
draw_set_color(c_ltgray)
draw_ellipse(argument0-radius,argument1-radius*global.YMOD,argument0+radius,argument1+radius*global.YMOD,false)
draw_set_color(c_dkgray)
draw_ellipse(argument0-radius,argument1-radius*global.YMOD,argument0+radius,argument1+radius*global.YMOD,true)
