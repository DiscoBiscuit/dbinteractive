var new;

new = ds_map_find_value(gui_elements,argument0)
if(ds_map_exists(new,argument1))
{
    ds_map_replace(new,argument1,argument2)
}
else
{
    ds_map_add(new,argument1,argument2)
}
