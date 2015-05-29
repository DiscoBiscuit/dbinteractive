var new,parentname,parent;
new = argument0
parentname = ds_map_find_value(new,"parent")
if(parentname=="NULL"){return false}

if(gui_id_mouseover[2] == name and gui_id_mouseover[1] == parentname)
{ 
    if(mouse_check_button_pressed(mb_left))
    {
        parent = ds_map_find_value(gui_elements,parentname)
        gui_edit(new,"active",1)
        gui_edit(new,"drag_x",ds_map_find_value(new,"x") - gui_mx - ds_map_find_value(new,"lx"))
        gui_edit(new,"drag_y",ds_map_find_value(new,"y") - gui_my - ds_map_find_value(new,"ly"))
    }
}

if(mouse_check_button_released(mb_left))
{
    gui_edit(new,"active",0)
}

if(ds_map_find_value(new,"active")==1)
{
    parent = gui_lookup( ds_map_find_value(new,"parent") )
    gui_move(parent,gui_mx + ds_map_find_value(new,"drag_x"), gui_my + ds_map_find_value(new,"drag_y"))
}