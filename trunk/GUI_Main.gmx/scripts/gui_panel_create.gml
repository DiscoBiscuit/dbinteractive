var new,cldr;
new = ds_map_create()

ds_map_add(new,"type","panel")
ds_map_add(new,"draw",gui_panel_draw)

cldr = ds_list_create()
ds_list_add(cldr,"self")
ds_map_add(new,"collider",cldr)

ds_map_add(new,"name",argument0)
ds_map_add(new,"x",argument1)
ds_map_add(new,"y",argument2)
ds_map_add(new,"width",argument3)
ds_map_add(new,"height",argument4)
ds_map_add(new,"color",argument5)
ds_map_add(new,"canfocus",argument6)
ds_map_add(new,"draggable",argument7)

return new
