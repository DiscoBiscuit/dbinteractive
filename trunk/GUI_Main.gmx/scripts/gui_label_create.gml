var new;
new = ds_map_create()

ds_map_add(new,"type","label")
ds_map_add(new,"step",gui_empty)
ds_map_add(new,"draw",gui_label_draw)
ds_map_add(new,"parent","NULL")

ds_map_add(new,"x",argument0)
ds_map_add(new,"y",argument1)
ds_map_add(new,"lx",argument0)
ds_map_add(new,"ly",argument1)
ds_map_add(new,"text",argument2)
ds_map_add(new,"font",argument3)
ds_map_add(new,"color",argument4)

return new
