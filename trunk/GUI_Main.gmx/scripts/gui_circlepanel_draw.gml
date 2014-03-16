var new,tx,ty,tx,th;
new = argument0
tx = ds_map_find_value(new,"x")
ty = ds_map_find_value(new,"y")
tr = ds_map_find_value(new,"width")
draw_set_color(ds_map_find_value(new,"color"))

draw_circle(tx+tr/2,ty+tr/2,tr/2,false)

if(gui_id_mouseover == gui_id)
{
    draw_set_color(c_red)
    draw_circle(tx+tr/2,ty+tr/2,tr/2,true)
}
