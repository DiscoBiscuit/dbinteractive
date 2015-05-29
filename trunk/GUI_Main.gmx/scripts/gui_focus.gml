var name,new,index,size,newparent,fl;
name = argument0
new = gui_lookup(name)
index = ds_list_find_index(gui_list,name)
size = ds_list_size(gui_list)

ds_list_delete(gui_list,index)
ds_list_add(gui_list,name)

for(fl=0;fl<size;fl+=1)
{
    name = ds_list_find_value(gui_list,fl)
    new = gui_lookup(name)
    newparent = ds_map_find_value(new,"parent")
    
    if(ds_list_find_index(gui_list,newparent)>fl)
    {
        ds_list_delete(gui_list,fl)
        ds_list_add(gui_list,name)
        fl -= 1
        size -= 1
    }
}