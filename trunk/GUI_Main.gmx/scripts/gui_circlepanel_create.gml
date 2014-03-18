var new,cldr;

new = gui_panel_create(argument0,argument1,argument2,argument2,argument3,argument4)
ds_map_replace(new,"type","circlepanel")
ds_map_replace(new,"draw",gui_circlepanel_draw)
ds_list_destroy(ds_map_find_value(new,"collider"))
ds_map_replace(new,"collider",gui_collider_create("circle",1,0,0,argument2))

return new
