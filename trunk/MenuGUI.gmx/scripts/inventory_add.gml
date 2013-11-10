
var new;
for(i=0;i<ds_list_size(obj_gui.inventory);i+=1)
{
    new = ds_list_find_value(obj_gui.inventory,i)
    if(new.building=="none")
    {
        with(new)
        {
        building = argument0
        level = argument1
        sprite = ds_list_find_value(ds_map_find_value(buildings.sprite,building),level)
        }
        return true
    }
}
return false
