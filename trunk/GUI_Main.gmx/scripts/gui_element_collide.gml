var new,cldr,hide,cldr_type,cldr_layer;
new = argument0
cldr = ds_map_find_value(new,"collider")
hide = ds_map_find_value(new,"hide")

if(cldr!=0 and hide!=1)
{

    elem_type = ds_map_find_value(new,"type")
    cldr_type = ds_list_find_value(cldr,0)
    cldr_layer = ds_list_find_value(cldr,1)

    if(cldr_type=="rect")
    {
        if( gui_mouse_on_rect( ds_map_find_value(new,"x") + ds_list_find_value(cldr,2),ds_map_find_value(new,"y") + ds_list_find_value(cldr,3), ds_list_find_value(cldr,4), ds_list_find_value(cldr,5) ) )
        {
            gui_mouseover = true
            gui_id_mouseover[cldr_layer] = gui_id
        }
    }
    
    if(cldr_type=="circle")
    {
        if( gui_mouse_on_circle( ds_map_find_value(new,"x") + ds_list_find_value(cldr,2),ds_map_find_value(new,"y") + ds_list_find_value(cldr,3),+ ds_list_find_value(cldr,4) ) )
        {
            gui_mouseover = true
            gui_id_mouseover[cldr_layer] = gui_id
        }
    }

}
