//draw_button(x1,y1,x2,y2,text)
draw_set_color(c_gray);
draw_rectangle(argument0,argument1,argument2,argument3,false);
draw_set_color(c_dkgray);
draw_rectangle(argument0,argument1,argument2,argument3,true);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(fnt_button);
draw_set_color(c_white);
draw_text(argument0 + (argument2 - argument0),argument1 + (argument3 - argument1),argument4);
