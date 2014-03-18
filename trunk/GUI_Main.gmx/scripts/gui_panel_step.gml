var name,new;
name = ds_list_find_value(gui_list,gui_id)

if(gui_id_mouseover[1] == gui_id)
{ 
    if(mouse_check_button_pressed(mb_left))
    {
        new = ds_map_find_value(gui_elements,name)
        if(ds_map_find_value(new,"canfocus")==true)
        {
            gui_focus(name)
        }
    }
}
