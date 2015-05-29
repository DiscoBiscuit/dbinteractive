var new;
new = argument0

if(gui_id_mouseover[1] == name)
{ 
    if(mouse_check_button_pressed(mb_left))
    {
        if(ds_map_find_value(new,"canfocus")==true)
        {
            gui_focus( name )
        }
    }
}