var new,cldr;
new = ds_map_create()

ds_map_add(new,"type","panel")
ds_map_add(new,"step",gui_panel_step)
ds_map_add(new,"draw",gui_panel_draw)
ds_map_add(new,"parent","NULL")

ds_map_add(new,"collider",gui_collider_create("rect",1,0,0,argument2,argument3))

ds_map_add(new,"x",argument0)
ds_map_add(new,"y",argument1)
ds_map_add(new,"lx",argument0)
ds_map_add(new,"ly",argument1)
ds_map_add(new,"width",argument2)
ds_map_add(new,"height",argument3)
ds_map_add(new,"color",argument4)
ds_map_add(new,"canfocus",argument5)

return new
