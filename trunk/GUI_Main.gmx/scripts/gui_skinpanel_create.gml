var new,cldr;

new = gui_panel_create(argument0,argument1,argument2,argument3,argument4,c_white)
gui_edit(new,"type","skinpanel")
gui_edit(new,"draw",gui_skinpanel_draw)
gui_edit(new,"sprite",argument5)

return new
