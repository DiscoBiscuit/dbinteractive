var new,cldr;
new = gui_element_create(argument0,argument1)

gui_edit(new,"type","textbox")
gui_edit(new,"step",gui_textbox_step)
gui_edit(new,"draw",gui_textbox_draw)
gui_edit(new,"destroy",gui_textbox_destroy)

gui_edit(new,"collider",gui_collider_create("rect",2,0,0,argument2,argument3))

gui_edit(new,"width",argument2)
gui_edit(new,"height",argument3)
gui_edit(new,"color",argument4)
gui_edit(new,"textcolor",argument5)

if(argument6==-1)
gui_edit(new,"font",gui_font_default)
else
gui_edit(new,"font",argument6)

gui_edit(new,"persist",argument7)

gui_edit(new,"string","")
gui_edit(new,"active",0)
gui_edit(new,"laststring","")
gui_edit(new,"surface",surface_create(argument2+1,argument3+1))

gui_edit(new,"enter",argument8)

return new