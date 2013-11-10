// gui_button_mouseinregion( button_object )
// returns true if the mouse is within the region for the input button

var new;
new = argument0
return mouse_region( view_xview+new.parent.tx + new.tx - new.w/2 , view_yview+new.parent.ty + new.ty - new.h/2 , view_xview+new.parent.tx + new.tx + new.w/2 , view_yview+new.parent.ty + new.ty + new.h/2 )
