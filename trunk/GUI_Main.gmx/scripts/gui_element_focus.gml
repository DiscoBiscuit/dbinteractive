var name,new,index,size,newparent;
name = argument0
new = ds_map_find_value(gui_elements,name)
index = ds_list_find_index(gui_list,name)
size = ds_list_size(gui_list)

ds_list_delete(gui_list,index)
ds_list_add(gui_list,name)

for(gui_id=0;gui_id<size;gui_id+=1)
{
    name = ds_list_find_value(gui_list,gui_id)
    new = ds_map_find_value(gui_elements,name)
    newparent = ds_map_find_value(new,"parent")
    
    if(ds_list_find_index(gui_list,newparent)>gui_id)
    {
        ds_list_delete(gui_list,gui_id)
        ds_list_add(gui_list,name)
        size -= 1
    }
}
