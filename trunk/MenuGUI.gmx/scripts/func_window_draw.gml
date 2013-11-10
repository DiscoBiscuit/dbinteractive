draw_set_alpha(1)
draw_set_color(c_back)
draw_rectangle(view_xview+tx- w/2, view_yview+ty-h/2, view_xview+tx+w/2, view_yview+ty+h/2, false)

if(draggable){
draw_set_color(c_bar)
draw_rectangle(view_xview+tx- w/2, view_yview+ty-h/2, view_xview+tx+w/2, view_yview+ty-h/2 + 16, false)}

if(closeable){
draw_set_color(c_border)
draw_line(view_xview+tx+ w/2 - 2, view_yview+ty-h/2 + 2, view_xview+tx+w/2 - 12, view_yview+ty-h/2 +12)
draw_line(view_xview+tx+ w/2 - 12, view_yview+ty-h/2 + 2, view_xview+tx+w/2 - 2, view_yview+ty-h/2 +12)}

draw_set_color(c_border)
draw_rectangle(view_xview+tx- w/2, view_yview+ty-h/2, view_xview+tx+w/2, view_yview+ty+h/2, true)
