var new,dw,dh,dsprite;
new = argument0
dw = ds_map_find_value(new,"width")
dh = ds_map_find_value(new,"height")
dsprite = ds_map_find_value(new,"sprite")

draw_rectangle_skin(dsprite,0,dx,dy,dx+dw,dy+dh,1)
