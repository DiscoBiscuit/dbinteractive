var list,g1,g2,r,map;

list = ds_list_create()
ds_list_add(list,argument0)
ds_list_add(list,argument1)
ds_list_sort(list,true)
g1 = ds_list_find_value(list,0)
g2 = ds_list_find_value(list,1)
ds_list_destroy(list)

r = argument2

if(!ds_map_exists(global.combos,g1))
{
    ds_map_add_map(global.combos,g1,ds_map_create())
}

map = ds_map_find_value(global.combos,g1)
if(!ds_map_exists(map,g2))
{
    ds_map_add(map,g2,r)
    ds_list_add(global.glyphs,r)
}
