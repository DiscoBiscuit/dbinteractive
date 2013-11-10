// gui_button_new( window_object , x , y , w , h , text, function)

var window,new;
window = argument0

new = instance_create(0,0,gui_button)

new.tx = argument1
new.ty = argument2
new.w = argument3
new.h = argument4
new.text = argument5
new.func_click = argument6
new.parent = window

ds_list_insert(window.elements,0,new)

return new
