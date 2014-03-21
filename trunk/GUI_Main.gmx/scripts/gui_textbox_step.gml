var new,persist;
new = argument0
persist = gui_get(new,"persist")


if(mouse_check_button_pressed(mb_left))
{
    if(gui_id_mouseover[2] == name)
    { 
        gui_edit(new,"active",1)
        if(persist)
        keyboard_string = gui_get(new,"string")
        else
        keyboard_string = ""
    }
    else
    {
        gui_edit(new,"active",0)
        gui_edit(new,"string","")
    }
}


if(gui_get(new,"active"))
{
    if(keyboard_check_pressed(vk_enter))
    {
        script_execute(gui_get(new,"enter"),gui_get(new,"string"))
        keyboard_string = ""
        
        if(!persist)
        gui_edit(new,"active",0)
    }
    gui_edit(new,"string",keyboard_string)
}
