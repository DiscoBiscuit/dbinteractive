// gui_window_close( window_object )
// closes the given window and removes it from its controller list

var new,window_id;
new = argument0
window_id = ds_list_find_index(new.controller.windows,new)

var size2;
    size2 = ds_list_size(new.elements)

for(j=size2-1;j>=0;j-=1)
    {
    newelement = ds_list_find_value( new.elements, j )
    with( newelement )
    {
        instance_destroy()
    }
}

ds_list_delete(new.controller.windows,window_id)

with( new )
{
    instance_destroy()
}
