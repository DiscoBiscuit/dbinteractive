var list,g1,g2,map;

list = ds_list_create()
ds_list_add(list,argument0)
ds_list_add(list,argument1)
ds_list_sort(list,true)
g1 = ds_list_find_value(list,0)
g2 = ds_list_find_value(list,1)
ds_list_destroy(list)

if(ds_map_exists(global.combos,g1))
{
    map = ds_map_find_value(global.combos,g1)
    if(ds_map_exists(map,g2))
    {
        glyph = ds_map_find_value(map,g2)
        image_index = ds_map_find_value(global.glyphs,glyph)
    }
    else
    {
        return ""
    }
}
else
{
    return ""
}
