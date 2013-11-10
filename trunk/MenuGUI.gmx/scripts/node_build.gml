
var new,newbuilding,newlevel;
new = argument0
newbuilding = argument1
newlevel = argument2

with(new)
{
building = newbuilding
level = newlevel
sprite_index = ds_list_find_value(ds_map_find_value(buildings.sprite,building),level)
}
