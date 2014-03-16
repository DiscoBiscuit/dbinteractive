var new,tx,ty,tx,th;
new = argument0
tx = ds_map_find_value(new,"x")
ty = ds_map_find_value(new,"y")
tw = ds_map_find_value(new,"width")
th = ds_map_find_value(new,"height")
draw_set_color(ds_map_find_value(new,"color"))

draw_rectangle(tx,ty,tx+tw,ty+th,false)

if(gui_id_mouseover == gui_id)
{
    draw_set_color(c_red)
    draw_rectangle(tx,ty,tx+tw,ty+th,true)
}
