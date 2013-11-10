// gui_dragbutton_new( window_object , x , y , w , h , sprite , axis , range , bidirectional , function)

var window,new;
window = argument0

new = instance_create(0,0,gui_dragbutton)

new.tx = argument1
new.ty = argument2
new.w = argument3
new.h = argument4
new.sprite =argument5
new.axis = argument6
new.range = argument7
new.bidirectional = argument8
new.func_click = argument9
new.parent = window

ds_list_insert(window.elements,0,new)

return new
