var new,destroyscript,index,size,name,newparent,dl;
new = gui_lookup(argument0)

destroyscript = ds_map_find_value(new,"destroy")
script_execute(destroyscript,new)

if(ds_map_exists(new,"collider"))
{
    ds_list_destroy(gui_get(new,"collider"))
}

index = ds_list_find_index(gui_list,argument0)
ds_list_delete(gui_list,index)
ds_map_destroy(new)
ds_map_delete(gui_elements,argument0)

size = ds_list_size(gui_list)
for(dl=0;dl<size;dl+=1)
{
    name = ds_list_find_value(gui_list,dl)
    new = gui_lookup(name)
    newparent = ds_map_find_value(new,"parent")
    
    if(newparent!="NULL" and !ds_map_exists(gui_elements,newparent))
    {
        ds_map_replace(new,"parent","NULL")
    }
}