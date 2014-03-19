var new,parent;

new = gui_lookup(argument0)
ds_map_replace(new,"parent",argument1)

parent = gui_lookup(argument1)
ds_map_replace(new,"lx", ds_map_find_value(new,"x") - ds_map_find_value(parent,"x"))
ds_map_replace(new,"ly", ds_map_find_value(new,"y") - ds_map_find_value(parent,"y"))
