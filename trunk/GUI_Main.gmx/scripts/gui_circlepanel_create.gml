var new,cldr;

new = gui_panel_create(argument0,argument1,argument2,argument3,argument3,argument4,argument5,argument6)
ds_map_replace(new,"type","circlepanel")
ds_map_replace(new,"draw",gui_circlepanel_draw)

return new
