
var new;
new = ds_list_find_value(obj_gui.inventory,argument2)
    with(new)
    {
        building = argument0
        level = argument1
        sprite = ds_list_find_value(ds_map_find_value(buildings.sprite,building),level)
    }
return true
