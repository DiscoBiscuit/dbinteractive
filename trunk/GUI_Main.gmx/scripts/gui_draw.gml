gui_mx = window_mouse_get_x()
gui_my = window_mouse_get_y()

var new,size,cldr;
size = ds_list_size(gui_elements)

gui_mouseover = false
gui_id_mouseover = -1
for(gui_id=0;gui_id<size;gui_id+=1)
{
    new = ds_list_find_value(gui_elements,gui_id)
    cldr = ds_map_find_value(new,"collider")
    if(cldr!=0)
    {
        gui_collision(new,cldr)
    }
}

for(gui_id=0;gui_id<size;gui_id+=1)
{
    new = ds_list_find_value(gui_elements,gui_id)
    script_execute(ds_map_find_value(new,"draw"),new)
}
