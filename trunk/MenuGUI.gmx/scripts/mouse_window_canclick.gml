if(!mouse_in_window_region( id ))
return false

var new,over,window_id;
over = true
window_id = ds_list_find_index(controller.windows,id)

for(i=0;i<window_id;i+=1)
{
    new = ds_list_find_value(controller.windows,i)
    if(mouse_in_window_region(new))
    {
            over = false
    }
}
return over
