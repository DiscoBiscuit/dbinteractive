var new,par,vec,child;
new = argument0
par = new.parent

vec = rotate2(new.lx,new.ly,par.direction)
new.x = par.x+vec[1]
new.y = par.y+vec[2]
new.direction = par.direction+new.ld
bone_localize_children(new)