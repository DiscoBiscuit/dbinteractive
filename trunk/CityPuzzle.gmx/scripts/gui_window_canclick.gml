// gui_window_canclick( window_object )
// returns true if the user can click on the window space

var new,over,window_id,next;
new = argument0

if(!gui_window_mouseinregion( new ))
return false

over = true
window_id = ds_list_find_index(new.controller.windows,new)

for(i=0;i<window_id;i+=1)
{
    next = ds_list_find_value(new.controller.windows,i)
    if(gui_window_mouseinregion(next))
    {
            over = false
    }
}
return over
