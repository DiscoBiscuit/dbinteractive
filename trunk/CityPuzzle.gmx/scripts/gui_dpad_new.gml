// gui_button_new( window_object , x , y)

var window,new;
window = argument0

new = instance_create(0,0,gui_dpad)

new.tx = argument1
new.ty = argument2
new.parent = window

ds_list_insert(window.elements,0,new)

return new
