gui_mx = window_mouse_get_x()
gui_my = window_mouse_get_y()

var new,size,l;
size = ds_list_size(gui_list)

global.gui_mouseover = false
for(l=1;l<=gui_layers;l+=1){gui_id_mouseover[l] = "NULL"}

for(gui_id=0;gui_id<size;gui_id+=1)
{
    name = ds_list_find_value(gui_list,gui_id)
    new = ds_map_find_value(gui_elements,name)
    gui_element_collide(new)
}

for(gui_id=0;gui_id<size;gui_id+=1)
{
    name = ds_list_find_value(gui_list,gui_id)
    new = ds_map_find_value(gui_elements,name)
    gui_element_step(new)
    gui_element_localize(new)
}

for(gui_id=0;gui_id<size;gui_id+=1)
{

    name = ds_list_find_value(gui_list,gui_id)
    new = ds_map_find_value(gui_elements,name)
    gui_element_draw(new)
}
