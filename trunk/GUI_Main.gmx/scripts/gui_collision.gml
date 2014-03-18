var new,col,type;
new = argument0
col = argument1
elem_type = ds_map_find_value(new,"type")
cldr_type = ds_list_find_value(col,0)

if(cldr_type=="self")
{
    if(elem_type=="panel" or elem_type=="skinpanel")
    {
        if( gui_mouse_on_rect(ds_map_find_value(new,"x"),ds_map_find_value(new,"y"),ds_map_find_value(new,"width"),ds_map_find_value(new,"height")) )
        {
            gui_mouseover = true
            gui_id_mouseover[1] = gui_id
        }
    }
    
    if(elem_type=="circlepanel")
    {
        if( gui_mouse_on_circle(ds_map_find_value(new,"x"),ds_map_find_value(new,"y"),ds_map_find_value(new,"width"),ds_map_find_value(new,"height")) )
        {
            gui_mouseover = true
            gui_id_mouseover[1] = gui_id
        }
    }
}
