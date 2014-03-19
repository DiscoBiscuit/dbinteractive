var new,dw,dh,dstring,dactive,dsw,dsurface;
new = argument0
dw = ds_map_find_value(new,"width")
dh = ds_map_find_value(new,"height")
dstring = ds_map_find_value(new,"string")
dactive = ds_map_find_value(new,"active")
dsurface = ds_map_find_value(new,"surface")

if(!surface_exists(dsurface))
{
    gui_edit(new,"surface",surface_create(dw+2,dh+2))
}

surface_set_target(dsurface)

draw_rectangle(0,0,dw,dh,false)

if(!dactive)
draw_set_color(merge_color(dcolor,c_black,0.5))
else
draw_set_color(merge_color(dcolor,c_white,0.5))

draw_rectangle(-1,-1,dw-1,dh-1,true)

if(dactive)
{

draw_set_halign(fa_left)
draw_set_valign(fa_top)

draw_set_font(ds_map_find_value(new,"font"))
draw_set_color(ds_map_find_value(new,"textcolor"))

dsw = string_width(dstring)

draw_text(-max(0,dsw-(dw-4)),0,dstring)

if(sin(current_time/200)>0)
draw_line(min(dw-4,dsw)+1, 2, min(dw-4,dsw)+1, dh-3)

}

surface_reset_target()

draw_surface(dsurface,dx,dy)
