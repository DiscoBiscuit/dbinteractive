// gui_window_new( controller , x , y , w , h )

var new;
new = instance_create(0,0,gui_window)
new.controller = argument0
new.tx = argument1
new.ty = argument2
new.w = argument3
new.h = argument4
ds_list_insert(argument0.windows,0,new)

return new
