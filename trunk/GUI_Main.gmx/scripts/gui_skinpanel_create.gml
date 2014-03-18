var new,cldr;

new = gui_panel_create(argument0,argument1,argument2,argument3,argument4,c_white)
ds_map_replace(new,"type","skinpanel")
ds_map_replace(new,"draw",gui_skinpanel_draw)
ds_map_add(new,"sprite",argument5)

return new
