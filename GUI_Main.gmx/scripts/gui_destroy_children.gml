var new,destroyscript,index,size,name,newparent,dl;
new = gui_lookup(argument0)

size = ds_list_size(gui_list)
for(dl=0;dl<size;dl+=1)
{
    name = ds_list_find_value(gui_list,dl)
    new = gui_lookup(name)
    newparent = ds_map_find_value(new,"parent")
    
    if(newparent==argument0)
    {
        gui_destroy_children(name)
    }
}

destroyscript = ds_map_find_value(new,"destroy")
script_execute(destroyscript,new)

index = ds_list_find_index(gui_list,argument0)
ds_list_delete(gui_list,index)
ds_map_destroy(new)
ds_map_delete(gui_elements,argument0)
