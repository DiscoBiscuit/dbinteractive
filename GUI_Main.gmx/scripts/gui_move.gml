var new,parentname;

new = argument0
ds_map_replace(new,"x",argument1)
ds_map_replace(new,"y",argument2)

parentname = ds_map_find_value(new,"parent")
if(string(parentname)!="NULL")
{
    var parent;
    parent = gui_lookup(parentname)
    ds_map_replace(new,"lx", ds_map_find_value(new,"x") - ds_map_find_value(parent,"x"))
    ds_map_replace(new,"ly", ds_map_find_value(new,"y") - ds_map_find_value(parent,"y"))
}
