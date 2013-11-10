draw_set_color(merge_color(c_back,c_pressed,pressed))
draw_roundrect(parent.x + tx- w/2, parent.y + ty-h/2, parent.x + tx+w/2, parent.y + ty+h/2, false)

draw_set_color(c_border)
draw_roundrect(parent.x + tx- w/2, parent.y + ty-h/2, parent.x + tx+w/2, parent.y + ty+h/2, true)

draw_set_color(c_text)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(parent.x + tx, parent.y + ty, text )
