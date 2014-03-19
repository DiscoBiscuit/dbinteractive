var new;
new = gui_element_create(argument0,argument1)

gui_edit(new,"type","label")
gui_edit(new,"step",gui_empty)
gui_edit(new,"draw",gui_label_draw)

gui_edit(new,"text",argument2)
gui_edit(new,"color",argument3)
gui_edit(new,"font",gui_font_default)
gui_edit(new,"halign",gui_halign_default)
gui_edit(new,"valign",gui_halign_default)

return new
