draw_set_color(merge_color(c_back,c_pressed,pressed))
draw_roundrect(view_xview+parent.tx + tx- w/2, view_yview+parent.ty + ty-h/2, view_xview+parent.tx + tx+w/2, view_yview+parent.ty + ty+h/2, false)

draw_set_color(c_border)
draw_roundrect(view_xview+parent.tx + tx- w/2, view_yview+parent.ty + ty-h/2, view_xview+parent.tx + tx+w/2, view_yview+parent.ty + ty+h/2, true)

draw_set_color(c_text)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(view_xview+parent.tx + tx, view_yview+parent.ty + ty, text )
