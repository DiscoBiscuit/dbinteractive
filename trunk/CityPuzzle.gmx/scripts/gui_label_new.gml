// gui_label_new( window_object , x , y ,text)

var window,new;
window = argument0

new = instance_create(0,0,gui_label)

new.tx = argument1
new.ty = argument2
new.text = argument3
new.parent = window

ds_list_insert(window.elements,0,new)

return new
