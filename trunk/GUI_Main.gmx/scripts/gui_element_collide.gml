var new,cldr,hide,hit,cldr_type,cldr_layer;
new = argument0
cldr = ds_map_find_value(new,"collider")
hide = ds_map_find_value(new,"hide")
hit = false

if(cldr!=0 and hide!=1)
{
    cldr_type = ds_list_find_value(cldr,0)
    cldr_layer = ds_list_find_value(cldr,1)

    if(cldr_type=="rect")
    {
        hit = gui_mouse_on_rect( ds_map_find_value(new,"x") + ds_list_find_value(cldr,2),ds_map_find_value(new,"y") + ds_list_find_value(cldr,3), ds_list_find_value(cldr,4), ds_list_find_value(cldr,5) )
    }
    
    if(cldr_type=="circle")
    {
        hit = gui_mouse_on_circle( ds_map_find_value(new,"x") + ds_list_find_value(cldr,2),ds_map_find_value(new,"y") + ds_list_find_value(cldr,3),+ ds_list_find_value(cldr,4) )
    }
}

if(hit==true)
{
    global.gui_mouseover = true
    for(l=cldr_layer;l<=gui_layers;l+=1)
    {
        gui_id_mouseover[l] = name
    }
}