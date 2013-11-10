// gui_window_mouseinregion( window_object )
// returns true if the mouse is within the region for the input window

var new;
new = argument0
return mouse_region( view_xview+new.tx - new.w/2 , view_yview+new.ty - new.h/2 , view_xview+new.tx + new.w/2 , view_yview+new.ty + new.h/2 )
