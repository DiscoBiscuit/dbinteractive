// gui_window_focus( window_object )
//focuses the window by brining it to the top of the list

var new,window_id;
new = argument0
window_id = ds_list_find_index(new.controller.windows,new)

ds_list_delete(new.controller.windows,window_id)
ds_list_insert(new.controller.windows,0,new)
