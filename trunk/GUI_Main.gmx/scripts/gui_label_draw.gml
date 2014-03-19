var new;
new = argument0
draw_set_font(ds_map_find_value(new,"font"))
draw_set_halign(ds_map_find_value(new,"halign"))
draw_set_valign(ds_map_find_value(new,"valign"))
draw_text(dx,dy,ds_map_find_value(new,"text"))
