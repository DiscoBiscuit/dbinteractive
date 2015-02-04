var new,cldr;
new = gui_element_create(argument0,argument1)

gui_edit(new,"type","circlepanel")
gui_edit(new,"step",gui_panel_step)
gui_edit(new,"draw",gui_circlepanel_draw)

gui_edit(new,"collider",gui_collider_create("circle",1,0,0,argument2))

gui_edit(new,"radius",argument2)
gui_edit(new,"color",argument3)
gui_edit(new,"canfocus",argument4)

return new
