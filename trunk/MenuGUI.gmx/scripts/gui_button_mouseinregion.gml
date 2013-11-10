// gui_window_buttoninregion( button_object )
// returns true if the mouse is within the region for the input button

var new;
new = argument0
return mouse_region( new.parent.x + new.tx - new.w/2 , new.parent.y + new.ty - new.h/2 , new.parent.x + new.tx + new.w/2 , new.parent.y + new.ty + new.h/2 )
