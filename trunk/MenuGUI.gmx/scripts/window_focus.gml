var new,window_id;
new = argument0
window_id = ds_list_find_index(controller.windows,new)

ds_list_delete(controller.windows,window_id)
ds_list_insert(controller.windows,0,new)
