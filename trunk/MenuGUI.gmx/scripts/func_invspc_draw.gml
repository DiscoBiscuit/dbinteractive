draw_set_color(c_white)
draw_set_alpha(1)
draw_sprite(spr_invspc,0,view_xview+parent.tx+tx,view_yview+parent.ty+ty)
draw_set_alpha(1-pressed/2)
draw_sprite(sprite,0,view_xview+parent.tx+tx,view_yview+parent.ty+ty)
