var new;
new = ds_map_create()

ds_map_replace(new,"type","generic")
ds_map_add(new,"step",gui_empty)
ds_map_add(new,"draw",gui_empty)
ds_map_add(new,"destroy",gui_generic_destroy)
ds_map_add(new,"parent","NULL")

ds_map_add(new,"x",argument0)
ds_map_add(new,"y",argument1)
ds_map_add(new,"lx",argument0)
ds_map_add(new,"ly",argument1)
ds_map_add(new,"color",c_white)
ds_map_add(new,"alpha",1)

return new