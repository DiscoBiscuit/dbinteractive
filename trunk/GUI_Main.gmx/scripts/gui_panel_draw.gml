var new,dw,dh;
new = argument0
dw = ds_map_find_value(new,"width")
dh = ds_map_find_value(new,"height")

draw_rectangle(dx,dy,dx+dw,dy+dh,false)

draw_set_color(merge_color(dcolor,c_black,0.5))
draw_rectangle(dx,dy,dx+dw,dy+dh,true)
