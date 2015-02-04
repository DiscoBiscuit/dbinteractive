var new,dw,dh,dstring,dsurface,dsh;
new = argument0
dw = ds_map_find_value(new,"width")
dh = ds_map_find_value(new,"height")
dstring = ds_map_find_value(new,"string")
dsurface = ds_map_find_value(new,"surface")

if(!surface_exists(dsurface))
{
    gui_edit(new,"surface",surface_create(dw+1,dh+1))
}

surface_set_target(dsurface)

draw_rectangle(0,0,dw,dh,false)
draw_set_color(merge_color(dcolor,c_black,0.5))
draw_rectangle(-1,-1,dw-1,dh-1,true)

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_font(ds_map_find_value(new,"font"))
draw_set_color(ds_map_find_value(new,"textcolor"))

dsh = string_height_ext(dstring,18,dw)

draw_text_ext(0,-max(0,dsh-(dh-4)),dstring,18,dw)

surface_reset_target()

draw_surface(dsurface,dx,dy)