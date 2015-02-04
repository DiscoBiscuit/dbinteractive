var new,parentname,hide;

new = argument0

hide = ds_map_find_value(new,"hide")
if(hide==0)
{
    parentname = ds_map_find_value(new,"parent")
    if(parentname!="NULL")
    {
        var parent;
        parent = ds_map_find_value(gui_elements,parentname)
        ds_map_replace(new,"x", ds_map_find_value(parent,"x") + ds_map_find_value(new,"lx"))
        ds_map_replace(new,"y", ds_map_find_value(parent,"y") + ds_map_find_value(new,"ly"))
    }
}
