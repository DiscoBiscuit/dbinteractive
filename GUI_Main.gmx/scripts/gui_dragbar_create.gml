var new,cldr;
new = gui_element_create(argument0,argument1)

gui_edit(new,"type","dragbar")
gui_edit(new,"step",gui_dragbar_step)
gui_edit(new,"draw",gui_panel_draw)

gui_edit(new,"collider",gui_collider_create("rect",2,0,0,argument2,argument3))

gui_edit(new,"width",argument2)
gui_edit(new,"height",argument3)
gui_edit(new,"color",argument4)

gui_edit(new,"active",0)
gui_edit(new,"drag_x",0)
gui_edit(new,"drag_y",0)

return new