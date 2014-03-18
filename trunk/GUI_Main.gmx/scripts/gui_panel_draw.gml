var new,dw,dh;
new = argument0
dw = ds_map_find_value(new,"width")
dh = ds_map_find_value(new,"height")

draw_rectangle(dx,dy,dx+dw,dy+dh,false)
