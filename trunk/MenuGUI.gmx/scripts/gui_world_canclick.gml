// gui_world_canclick( controller_object )
// returns true if the user can click outside all window spaces

var new,over,next;
new = argument0
over = true

if(new.disableworldclick==true){return false}

for(i=0;i<ds_list_size(new.windows);i+=1)
{
    next = ds_list_find_value(new.windows,i)
    if(gui_window_mouseinregion(next))
    {
            over = false
    }
}
return over
